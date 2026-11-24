#!/usr/bin/env bash
# Check links in the built site using htmltest
# NOTE: This assumes the site is already built in public/
# Build the site first: hugo --gc --minify --buildFuture
#
# Usage:
#   ./check-links.sh              # Check entire site
#   ./check-links.sh public/blog  # Check only blog pages
#   ./check-links.sh public/about # Check only about pages

set -e

# Determine which directory to check
TEST_DIR="${1:-public}"

# Check if site is built
if [ ! -d "public" ]; then
    echo "❌ Error: public/ directory not found"
    echo "Please build the site first: hugo --gc --minify --buildFuture"
    exit 1
fi

if [ ! -d "$TEST_DIR" ]; then
    echo "❌ Error: Directory $TEST_DIR not found"
    exit 1
fi

echo "🔍 Checking links with htmltest in: $TEST_DIR"
echo ""

# Check if htmltest is installed
if ! command -v htmltest &> /dev/null && [ ! -f "./htmltest" ]; then
    echo "📦 htmltest not found, installing..."
    
    # Detect OS and architecture
    OS=$(uname -s | tr '[:upper:]' '[:lower:]')
    ARCH=$(uname -m)
    
    case "$ARCH" in
        x86_64)
            ARCH="amd64"
            ;;
        aarch64|arm64)
            ARCH="arm64"
            ;;
    esac
    
    # Download and install htmltest
    VERSION="0.17.0"
    FILENAME="htmltest_${VERSION}_${OS}_${ARCH}"
    DOWNLOAD_URL="https://github.com/wjdp/htmltest/releases/download/v${VERSION}/${FILENAME}.tar.gz"
    
    echo "Downloading htmltest v${VERSION} for ${OS}/${ARCH}..."
    
    # Download and extract
    if curl -fsSL "$DOWNLOAD_URL" -o htmltest.tar.gz; then
        tar -xzf htmltest.tar.gz htmltest
        chmod +x htmltest
        rm htmltest.tar.gz
        echo "✅ htmltest installed successfully"
    else
        echo "❌ Failed to download htmltest"
        echo "You can install it manually from: https://github.com/wjdp/htmltest/releases"
        exit 1
    fi
    
    HTMLTEST_CMD="./htmltest"
else
    if command -v htmltest &> /dev/null; then
        HTMLTEST_CMD="htmltest"
    else
        HTMLTEST_CMD="./htmltest"
    fi
fi

# Build a temporary config so we can point at a subdirectory (if requested)
# and dynamically skip stale content (see below).
TEMP_CONFIG=$(mktemp)
if [ "$TEST_DIR" != "public" ]; then
    sed "s|DirectoryPath: \"public\"|DirectoryPath: \"$TEST_DIR\"|" .htmltest.yml > "$TEMP_CONFIG"
else
    cp .htmltest.yml "$TEMP_CONFIG"
fi
CONFIG_FLAG="--conf $TEMP_CONFIG"

# Skip blog posts, event pages and newsletters more than two years old. htmltest has no
# date awareness, so we work out the cutoff here and add each stale page's
# output directory to IgnoreDirs. The age comes from the page's front-matter
# `date` (authoritative — folder names don't always match it); the ignore
# pattern uses the folder name, which is the published URL slug.
OLD_PAGES=$(mktemp)
# Same pages as a path regex list, so the DOI check below can skip them too.
STALE_PATHS=$(mktemp)
# Cutoff = two years ago today. ISO dates sort lexicographically, so we can
# compare as strings and avoid GNU/BSD `date` arithmetic differences.
CUTOFF="$(( $(date +%Y) - 2 ))-$(date +%m-%d)"
for section in blog events news; do
    [ -d "content/$section" ] || continue
    for dir in content/"$section"/*/; do
        [ -f "${dir}index.md" ] || continue
        slug=$(basename "$dir")
        raw=$(grep -m1 -E '^date:' "${dir}index.md" \
            | sed -E 's/^date:[[:space:]]*"?([0-9-]+)"?.*/\1/')
        [ -n "$raw" ] || continue
        # Normalise partial dates (YYYY or YYYY-MM) to a full ISO date.
        case "$raw" in
            [0-9][0-9][0-9][0-9])             date="$raw-01-01" ;;
            [0-9][0-9][0-9][0-9]-[0-9][0-9])  date="$raw-01" ;;
            *)                                date="$raw" ;;
        esac
        if [[ "$date" < "$CUTOFF" ]]; then
            printf '  - "(^|/)%s/%s(/|$)"\n' "$section" "$slug" >> "$OLD_PAGES"
            printf '/%s/%s/\n' "$section" "$slug" >> "$STALE_PATHS"
        fi
    done
done
# Insert the generated patterns immediately after the IgnoreDirs: key so they
# land inside that list regardless of where it sits in the config.
awk -v f="$OLD_PAGES" '
    { print }
    /^IgnoreDirs:/ { while ((getline line < f) > 0) print line; close(f) }
' "$TEMP_CONFIG" > "$TEMP_CONFIG.new" && mv "$TEMP_CONFIG.new" "$TEMP_CONFIG"
rm -f "$OLD_PAGES"

# Run htmltest and filter output in real-time to reduce noise
# Add patterns to ignore below (one per line for easy editing)
set +e
$HTMLTEST_CMD $CONFIG_FLAG 2>&1 | grep -v \
  -e '^[0-9][0-9]*: ' \
  -e '^htmltest started' \
  -e '^running in concurrent' \
  -e 'from cache' \
  -e 'Partial Content' \
  -e 'OK ---' \
  -e 'DOCTYPE' \
  -e 'fresh ---' \
  -e 'hitting ---' \
  -e '--> <nil>' \
  -e 'testDocument' \
  -e 'errors in .* documents' \
  || true
HTMLTEST_EXIT=${PIPESTATUS[0]}
set -e

rm -f "$TEMP_CONFIG"

# Check DOIs. htmltest skips doi.org (see IgnoreURLs in .htmltest.yml) because
# resolving a DOI means loading the publisher's site, which is often slow or
# blocks bots. Instead, ask the DOI handle API whether each DOI is registered:
# https://www.doi.org/the-identifier/resources/factsheets/doi-resolution-documentation
# responseCode 1 = registered; 100 = handle not found; anything else is an error.
echo ""
echo "🔍 Checking DOIs against the DOI handle API"
DOI_LINKS=$(mktemp)
# Hugo's minifier drops attribute quotes, so match href=... with or without them.
grep -rEo 'href="?https?://(dx\.)?doi\.org/[^" >]+' "$TEST_DIR" --include='*.html' \
    | sed -E 's#^([^:]+):href="?https?://(dx\.)?doi\.org/#\1\t#' \
    | grep -v -F -f "$STALE_PATHS" \
    | sort -u > "$DOI_LINKS" || true
rm -f "$STALE_PATHS"

check_doi() {
    # Prints "<code> <doi>"; code 000 means the API couldn't be reached.
    local doi="$1" body code attempt
    for attempt in 1 2 3; do
        body=$(curl -s --max-time 20 "https://doi.org/api/handles/$doi") \
            && code=$(printf '%s' "$body" | sed -nE 's/.*"responseCode":([0-9]+).*/\1/p') \
            && [ -n "$code" ] && { echo "$code $doi"; return; }
        sleep "$attempt"
    done
    echo "000 $doi"
}
export -f check_doi

DOI_RESULTS=$(cut -f2 "$DOI_LINKS" | sed 's/&amp;/\&/g' | sort -u \
    | xargs -P 8 -I{} bash -c 'check_doi "$1"' _ {})
DOI_COUNT=$(printf '%s\n' "$DOI_RESULTS" | grep -c . || true)
DOI_EXIT=0
while read -r code doi; do
    [ -n "$doi" ] || continue
    pages=$(awk -F'\t' -v d="$doi" '$2 == d { print $1 }' "$DOI_LINKS" | sed "s#^$TEST_DIR/##" | sort -u | paste -sd ' ' -)
    case "$code" in
        1)   ;;
        000) echo "  ⚠️  could not reach the DOI API for $doi (on: $pages)" ;;
        *)   echo "  DOI not found (handle API code $code) --- $pages --> https://doi.org/$doi"
             DOI_EXIT=1 ;;
    esac
done <<< "$DOI_RESULTS"
rm -f "$DOI_LINKS"
if [ $DOI_EXIT -eq 0 ]; then
    echo "  checked $DOI_COUNT DOIs, all registered"
fi

if [ $HTMLTEST_EXIT -eq 0 ] && [ $DOI_EXIT -eq 0 ]; then
    echo ""
    echo "✅ All links validated successfully!"
    exit 0
else
    echo ""
    echo "❌ Link validation failed - see errors above"
    exit 1
fi

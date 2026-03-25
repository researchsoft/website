#!/usr/bin/env bash
# Check links in the built site using htmltest
# NOTE: This assumes the site is already built in public/
# Build the site first: hugo --gc --minify --buildFuture

set -e

# Check if site is built
if [ ! -d "public" ]; then
    echo "❌ Error: public/ directory not found"
    echo "Please build the site first: hugo --gc --minify --buildFuture"
    exit 1
fi

echo "🔍 Checking links with htmltest..."
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

# Run htmltest
if $HTMLTEST_CMD; then
    echo ""
    echo "✅ All links validated successfully!"
    exit 0
else
    echo ""
    echo "❌ Link validation failed - see errors above"
    exit 1
fi

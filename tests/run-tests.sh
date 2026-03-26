#!/usr/bin/env bash
# Test suite for link checker
# This script tests the link checking functionality with known good and bad links

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TEST_HTML_DIR="${SCRIPT_DIR}/html"
TEST_CONFIG="${SCRIPT_DIR}/.htmltest.yml"

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${BLUE}🧪 Link Checker Test Suite${NC}"
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo ""

# Check if test HTML directory exists
if [ ! -d "$TEST_HTML_DIR" ]; then
    echo -e "${RED}❌ Error: Test HTML directory not found: $TEST_HTML_DIR${NC}"
    exit 1
fi

# Check if htmltest is installed
if ! command -v htmltest &> /dev/null && [ ! -f "${SCRIPT_DIR}/../htmltest" ]; then
    echo -e "${YELLOW}📦 htmltest not found. Installing...${NC}"
    cd "${SCRIPT_DIR}/.."
    bash ./check-links.sh || true
    cd - > /dev/null
fi

# Determine htmltest command
if command -v htmltest &> /dev/null; then
    HTMLTEST_CMD="htmltest"
elif [ -f "${SCRIPT_DIR}/../htmltest" ]; then
    HTMLTEST_CMD="${SCRIPT_DIR}/../htmltest"
else
    echo -e "${RED}❌ htmltest could not be installed${NC}"
    exit 1
fi

echo -e "${GREEN}✓ Using htmltest: $HTMLTEST_CMD${NC}"
echo ""

# Test 1: Run with expected failures (full check)
echo -e "${BLUE}━━━ Test 1: Full Link Check (expecting failures) ━━━${NC}"
echo "This test runs htmltest on HTML files with known broken links."
echo "Expected: Some failures (broken internal/external links, missing resources)"
echo ""

# Run htmltest and capture output and exit code
set +e
$HTMLTEST_CMD -c "$TEST_CONFIG" "$TEST_HTML_DIR" 2>&1 | tee /tmp/htmltest-output.txt
TEST1_EXIT_CODE=${PIPESTATUS[0]}  # Get exit code of htmltest, not tee
set -e

if [ $TEST1_EXIT_CODE -ne 0 ]; then
    echo ""
    echo -e "${GREEN}✓ Test 1 PASSED: htmltest correctly detected broken links${NC}"
    TEST1_RESULT="PASS"
else
    echo ""
    echo -e "${RED}✗ Test 1 FAILED: htmltest should have detected broken links but passed${NC}"
    TEST1_RESULT="FAIL"
fi

echo ""

# Test 2: Check that specific errors are detected
echo -e "${BLUE}━━━ Test 2: Verify Specific Error Detection ━━━${NC}"
TEST2_RESULT="PASS"

# Check for expected error patterns in output
EXPECTED_ERRORS=(
    "nonexistent-page.html"
    "missing-image.png"
    "missing-style.css"
    "missing-script.js"
    "this-domain-does-not-exist-12345.com"
)

echo "Checking for expected errors in output:"
for error in "${EXPECTED_ERRORS[@]}"; do
    if grep -q "$error" /tmp/htmltest-output.txt; then
        echo -e "  ${GREEN}✓${NC} Detected broken link: $error"
    else
        echo -e "  ${RED}✗${NC} Missing expected error: $error"
        TEST2_RESULT="FAIL"
    fi
done

echo ""
if [ "$TEST2_RESULT" = "PASS" ]; then
    echo -e "${GREEN}✓ Test 2 PASSED: All expected errors detected${NC}"
else
    echo -e "${RED}✗ Test 2 FAILED: Some expected errors were not detected${NC}"
fi

echo ""

# Test 3: Verify ignored URLs are not checked
echo -e "${BLUE}━━━ Test 3: Verify URL Ignore List Works ━━━${NC}"
TEST3_RESULT="PASS"

IGNORED_PATTERNS=(
    "linkedin.com"
    "twitter.com"
    "x.com"
    "fonts.googleapis.com"
)

echo "Checking that ignored URLs are not flagged as errors:"
for pattern in "${IGNORED_PATTERNS[@]}"; do
    # Check if the pattern appears as an error (it shouldn't)
    if grep -q "$pattern.*target does not exist\|$pattern.*status: [45][0-9][0-9]" /tmp/htmltest-output.txt 2>/dev/null; then
        echo -e "  ${RED}✗${NC} Ignored pattern was checked: $pattern"
        TEST3_RESULT="FAIL"
    else
        echo -e "  ${GREEN}✓${NC} Correctly ignored: $pattern"
    fi
done

echo ""
if [ "$TEST3_RESULT" = "PASS" ]; then
    echo -e "${GREEN}✓ Test 3 PASSED: Ignore list working correctly${NC}"
else
    echo -e "${RED}✗ Test 3 FAILED: Some ignored URLs were still checked${NC}"
fi

echo ""

# Test 4: Verify valid links pass
echo -e "${BLUE}━━━ Test 4: Verify Valid Links Pass ━━━${NC}"
TEST4_RESULT="PASS"

VALID_RESOURCES=(
    "valid-page.html"
    "nested-page.html"
    "valid-image.png"
    "valid-style.css"
    "valid-script.js"
)

echo "Checking that valid resources pass:"
for resource in "${VALID_RESOURCES[@]}"; do
    # These should NOT appear as errors
    if grep -q "$resource.*target does not exist\|$resource.*status: [45][0-9][0-9]" /tmp/htmltest-output.txt 2>/dev/null; then
        echo -e "  ${RED}✗${NC} Valid resource flagged as error: $resource"
        TEST4_RESULT="FAIL"
    else
        echo -e "  ${GREEN}✓${NC} Valid resource passed: $resource"
    fi
done

echo ""
if [ "$TEST4_RESULT" = "PASS" ]; then
    echo -e "${GREEN}✓ Test 4 PASSED: Valid links correctly passed${NC}"
else
    echo -e "${RED}✗ Test 4 FAILED: Some valid links were flagged as errors${NC}"
fi

echo ""

# Summary
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${BLUE}📊 Test Summary${NC}"
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo ""

ALL_PASSED=true
for i in {1..4}; do
    var_name="TEST${i}_RESULT"
    result="${!var_name}"
    
    if [ "$result" = "PASS" ]; then
        echo -e "Test $i: ${GREEN}✓ PASSED${NC}"
    else
        echo -e "Test $i: ${RED}✗ FAILED${NC}"
        ALL_PASSED=false
    fi
done

echo ""

if [ "$ALL_PASSED" = true ]; then
    echo -e "${GREEN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
    echo -e "${GREEN}✅ All tests passed! Link checker is working correctly.${NC}"
    echo -e "${GREEN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
    exit 0
else
    echo -e "${RED}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
    echo -e "${RED}❌ Some tests failed. Please review the output above.${NC}"
    echo -e "${RED}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
    exit 1
fi

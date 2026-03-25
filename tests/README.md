# Link Checker Test Suite

This directory contains automated tests for the link checking functionality.

**Note:** This directory is excluded from Hugo builds via the `ignoreFiles` configuration in [config/_default/hugo.yaml](../config/_default/hugo.yaml). The test HTML files are for validation purposes only and are not part of the website.

## Directory Structure

```
tests/
├── run-tests.sh          # Main test runner script
├── .htmltest.yml         # Test-specific htmltest configuration
├── html/                 # Test HTML files
│   ├── index.html        # Main test page with various link scenarios
│   ├── valid-page.html   # Valid internal page
│   ├── valid-image.png   # Valid image file
│   ├── valid-style.css   # Valid CSS file
│   ├── valid-script.js   # Valid JavaScript file
│   └── subdir/
│       └── nested-page.html  # Nested page to test relative paths
└── README.md             # This file
```

## Test Coverage

The test suite validates the following scenarios:

### ✅ Links That Should Pass
- Valid internal HTML links
- Valid internal links with anchors
- Local anchor links (same page)
- Nested/relative path links
- Valid external links (e.g., researchsoft.org, github.com)
- Links to ignored domains (LinkedIn, Twitter/X, Google Fonts)
- Valid images, CSS, and JavaScript resources
- Mailto links

### ❌ Links That Should Fail
- Broken internal links (nonexistent pages)
- Valid pages with broken anchors
- Missing nested pages
- Nonexistent external domains
- HTTP 404 and 500 responses
- Missing images
- Missing CSS/JavaScript files
- Empty href attributes

### 🔇 Intentionally Ignored
- Social media platforms (LinkedIn, Twitter/X) - block bots
- Google Fonts CDN - can have inconsistent responses
- JavaScript href (`javascript:void(0)`)
- HTTP 403 (Forbidden) and 429 (Too Many Requests) status codes

## Running Tests

### Run All Tests

```bash
cd tests
./run-tests.sh
```

### Run Individual htmltest Commands

```bash
# Run htmltest against test HTML files
cd tests
htmltest -c .htmltest.yml html/

# Run with verbose output
htmltest -c .htmltest.yml -l 3 html/
```

## Test Descriptions

### Test 1: Full Link Check
Runs htmltest on all test HTML files with known broken links. Expects failures.

**Expected Result**: Exit code ≠ 0 (failures detected)

### Test 2: Specific Error Detection
Verifies that specific broken links are correctly identified:
- `nonexistent-page.html`
- `missing-image.png`
- `missing-style.css`
- `missing-script.js`
- `this-domain-does-not-exist-12345.com`

**Expected Result**: All expected errors appear in htmltest output

### Test 3: URL Ignore List
Confirms that URLs in the ignore list (LinkedIn, Twitter, etc.) are not flagged as errors.

**Expected Result**: No errors for linkedin.com, twitter.com, x.com, fonts.googleapis.com

### Test 4: Valid Links Pass
Ensures that valid resources are not flagged as errors:
- `valid-page.html`
- `nested-page.html`
- `valid-image.png`
- `valid-style.css`
- `valid-script.js`

**Expected Result**: No errors for valid resources

## Interpreting Results

When all tests pass, you'll see:
```
✅ All tests passed! Link checker is working correctly.
```

If any test fails, the output will show:
- Which test failed
- Specific errors or missing detections
- Raw htmltest output for debugging

## Adding New Tests

To add new test cases:

1. **Edit `html/index.html`** or create new HTML files
2. **Add test links** in the appropriate section (valid/broken/ignored)
3. **Update `run-tests.sh`** if you need to check for specific new errors:
   - Add to `EXPECTED_ERRORS` array for broken links
   - Add to `VALID_RESOURCES` array for valid resources
   - Add to `IGNORED_PATTERNS` array for ignored URLs

4. **Run tests** to verify new cases work as expected

## Debugging Test Failures

If tests fail unexpectedly:

1. **Check `/tmp/htmltest-output.txt`** for full htmltest output
2. **Run htmltest manually** with verbose logging:
   ```bash
   htmltest -c tests/.htmltest.yml -l 3 tests/html/
   ```
3. **Verify test HTML** files are correctly formatted
4. **Check external links** - they may be temporarily unavailable
5. **Review `.htmltest.yml`** configuration for correct ignore patterns

## CI/CD Integration

These tests can be run in CI/CD pipelines:

### GitHub Actions Example
```yaml
- name: Run link checker tests
  run: |
    cd tests
    ./run-tests.sh
```

### Netlify Example
Add to `netlify.toml`:
```toml
[build]
  command = "hugo && ./check-links.sh && cd tests && ./run-tests.sh"
```

## Notes

- **External link tests** may occasionally fail due to network issues or rate limiting
- **Test execution time** depends on external link checking (typically 10-30 seconds)
- **Cache is disabled** for tests (`CacheExpires: "0s"`) to ensure fresh results
- **Test output** is stored in `/tmp/htmltest-output.txt` for debugging

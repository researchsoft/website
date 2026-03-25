# Research Software Alliance Website

[![Netlify Status](https://api.netlify.com/api/v1/badges/b366fc0d-c20f-4312-a573-b3de6fa243fc/deploy-status)](https://app.netlify.com/sites/researchsoft/deploys)

This repository contains the source files that generates the Research Software
Alliance website. The repository is monitored by
[Netlify](https://www.netlify.com/), which generates and hosts the live
website. All content files are written
in Markdown and are processed into HTML by [Netlify](https://app.netlify.com/sites/researchsoft/deploys).

## Editing content

### Using VS Code (or any suitable Integrated Development Environment (IDE))

- You can clone a local copy of this repository using:

```zsh
git clone https://github.com/researchsoft/website.git
```

- Change to the 'website' directory:

```zsh
cd website
```

- Create a branch OR switch to an existing branch that you want to work on:

```zsh
git checkout -b new_branch_name # if you want to create a new branch
git checkout existing_branch_name # if you want to switch to an existing branch
```

- Make the necessary changes and stage them using:

```zsh
git add --all # if you want to stage all the modified files
git add path_to_file # if you want to stage any specific modified file. 
# To find the path to files that are modified use `git status`
```

- Commit the staged changes using:

```zsh
git commit -m ":tada: an informative commit message"
```

- Finally push your committed changes:

```zsh
git push --set-upstream origin new_branch_name # if pushing for the first time 
# to a new branch
git push # if pushing to an existing branch
```

- Create a Pull Request (PR) on GitHub repo and direct it to the `dev` branch
from your branch. Tag any relevant issue(s), add relevant label(s), and
request reviews where required.

### Using GitHub text editor interface

The only files that should be edited as a matter of course are in
[content](https://github.com/researchsoft/website/tree/master/content).
Images generally go into [static/images](https://github.com/researchsoft/website/tree/master/static/images).

When editing existing content, it is possible to use the GitHub text editor
interface to make changes. When viewing the file you would like to edit, click
the Edit button to make your changes. If you do not have permissions for
the repository directly, you will need to submit a pull request for an
administrator to adopt the changes.

### Editing CSS

In order to add SASS or CSS rules, add them into `assets/scss/custom.scss`. This is compiled into wowchemy.css in the `head`.

### Events

Events are managed using a simple `status` field. Events marked as `current` appear on the main Events page, while all others appear on Past Events.

#### Creating a New Event

**Via GitHub Web Interface:**

1. Go to [`content/events/`](https://github.com/researchsoft/website/tree/main/content/events) in the repository
2. Click **Add file** → **Create new file**
3. Name your file: `YYYY-MM-event-name/index.md` (e.g., `2026-09-conference/index.md`)
   - The folder name should include the date and be descriptive
   - Always end with `/index.md`

4. Copy this template into the file:
   ```yaml
   ---
   title: "Your Event Title"
   subtitle: ""
   date: "2026-09-15"
   status: current
   authors:
     - ""
   categories: 
     - Event
     - Ongoing
   summary: "Brief one-line description that appears on the events list."
   image:
     preview_only: true
     filename: "event-logo.png"
   draft: false
   ---
   
   Full event description goes here. Include all details, links, and information about the event.
   ```

5. **Customize the frontmatter** (the section between `---`):
   - `title`: Your event name
   - `date`: Event date in `YYYY-MM-DD` format
   - `status: current` means it appears on the main Events page
   - `summary`: One sentence that shows up in the list view
   - `image.filename`: Optional - name of logo/image file (see below)

6. If you have an event logo or image:
   - After creating the index.md, go back to your event folder
   - Click **Add file** → **Upload files**
   - Upload your image (PNG, JPG recommended)
   - Make sure the filename matches what you put in `image.filename`

7. Commit your changes with a message like "Add [Event Name] event"

#### Moving an Event from Current to Past

When an event has concluded:

1. Navigate to the event's `index.md` file in GitHub (e.g., `content/events/2026-09-conference/index.md`)
2. Click the pencil icon (Edit this file)
3. Find the line that says `status: current`
4. Change it to `status: past` OR delete the entire line
5. Optionally, change the category from `Ongoing` to `Past`
6. Scroll down and commit: "Move [Event Name] to past events"

The event will now appear on the Past Events page instead of the main Events page. **No files need to be moved** - events stay in the same folder.

#### Quick Reference

- **Current events**: Have `status: current` in frontmatter → show on `/events/`
- **Past events**: Have `status: past` or no status field → show on `/past-events/`
- **Event images**: Optional, placed in same folder as index.md, displayed on the right side of event cards
- **All events** live in `content/events/` regardless of status

## Extra information

Due to limitations in the version of Hugo that Netlify runs,
changing the _style_ of the website will require pulling this entire
repo to a computer and building the site with hugo-extended. The resulting
files generated in
[resources/_gen/assets/scss/styles](https://github.com/researchsoft/website/tree/master/resources/_gen/assets/scss/styles>) then need to be committed back to the repository.

## Adding ORCID Support to Blog Post Authors

The Atom feed supports ORCID identifiers for authors. ORCIDs are rendered as `<uri>` elements in the feed, which is the standard for Rogue Scholar and other scholarly aggregators.

### Two Formats Supported

#### Format 1: Simple Strings (No ORCIDs)

```yaml
authors:
  - Michelle Barker
  - Daniel S. Katz
```

**Renders as:**
```xml
<author>
  <name>Michelle Barker</name>
</author>
<author>
  <name>Daniel S. Katz</name>
</author>
```

#### Format 2: Objects with ORCIDs (Recommended for Scholarly Feeds)

```yaml
authors:
  - name: Michelle Barker
    orcid: https://orcid.org/0000-0002-3623-172X
  - name: Daniel S. Katz
    orcid: https://orcid.org/0000-0001-5934-7525
  - name: Kim Hartley
    # No ORCID - still works
```

**Renders as:**
```xml
<author>
  <name>Michelle Barker</name>
  <uri>https://orcid.org/0000-0002-3623-172X</uri>
</author>
<author>
  <name>Daniel S. Katz</name>
  <uri>https://orcid.org/0000-0001-5934-7525</uri>
</author>
<author>
  <name>Kim Hartley</name>
</author>
```

### ORCID Lookup

To find ORCIDs for authors:
1. Visit https://orcid.org/
2. Search for the author's name
3. Copy the full ORCID URL (e.g., `https://orcid.org/0000-0001-2345-6789`)

### Migration Path

You can update posts gradually:
1. Keep existing posts with simple string authors
2. Add ORCID data to new posts using the object format
3. Gradually update older posts as needed

The template supports both formats simultaneously.

### Testing

After updating a post with ORCIDs:
1. Rebuild: `hugo`
2. Check feed: `grep -A10 "PostTitle" public/index.xml | grep -E "<author>|<name>|<uri>"`
3. Validate at: https://validator.w3.org/feed/

## Automated Link Checking

### How It Works (For Content Editors)

This website has **automated link checking** that runs in the background. You don't need to do anything special - the system automatically checks for broken links when you make changes.

**What happens automatically:**

1. **When you create a Pull Request** - GitHub Actions automatically checks all links in the built site and reports results
2. **Weekly checks** - Every Monday, all links are re-checked to catch sites that go offline
3. **Site builds always succeed** - Broken links are reported but never prevent deployment

If a link is broken, you'll see a red ❌ on your Pull Request with details about which links failed. The PR can still be merged - link checks are informational to help maintain quality, not gatekeepers.

**You'll be notified if:**
- A link returns a 404 (page not found)
- A website is unreachable
- An internal link points to a non-existent page
- An image is missing

These notifications help maintain site quality but won't prevent your content from being published.

### Fixing Broken Links (GitHub Web Interface)

When the link checker finds broken links in your Pull Request, follow these steps:

#### Step 1: View the Link Check Results

1. Open your Pull Request on GitHub
2. Scroll down to the "Checks" section (below your changes)
3. Click on **"Check Links with htmltest"** to see which links failed
4. Look for lines showing "404", "timeout", or other errors

#### Step 2: Fix the Broken Link

**Option A: Update the link (if you know the correct URL)**

1. In your Pull Request, click on the **"Files changed"** tab
2. Find the file with the broken link
3. Click the **three dots** (•••) on the right side of the file header
4. Select **"Edit file"**
5. Find the broken link and update it to the correct URL
6. Scroll down and click **"Commit changes"**
7. The link check will run again automatically

**Option B: Remove the link (if the resource no longer exists)**

1. Follow steps 1-4 above
2. Remove the broken link or replace it with plain text
3. Commit the changes

**Option C: The link works but the checker reports it as broken**

Some websites block automated checkers even though the link works in a browser. If:
- The link works when you click it
- It's a social media site (LinkedIn, Twitter/X)
- It's a site that requires authentication
- It returns a 403 (Forbidden) error

Then request it be added to the ignore list:

1. **Add a comment to your Pull Request** saying:
   ```
   This link is valid but blocked by the site's bot protection.
   Please add to ignore list: [paste the URL here]
   ```
2. A maintainer will add it to [.htmltest.yml](.htmltest.yml) under `IgnoreURLs`
3. The link check will pass after the configuration is updated

#### Step 3: Wait for Re-check

After you commit the fix, GitHub Actions will automatically re-run the link check. If all links pass, you'll see a green ✅.

**Note:** You can merge your Pull Request even if link checks fail - they are informational only and won't prevent deployment. However, it's best practice to fix broken links to maintain site quality.

### Common Link Issues and Solutions

Link checks are **informational only** - they help maintain quality but won't prevent deployment. Here are common issues and recommended fixes:

**Common issues and fixes:**
- **404 errors**: Update the URL or remove the link
- **Timeout errors**: The website might be temporarily down - try again later or ignore if persistent
- **LinkedIn/Twitter blocks**: These are automatically ignored (social media blocks automated checkers)
- **403 Forbidden**: Site blocks bots - request it be added to ignore list (see above)
- **Internal links failing**: Check the path is correct and the target page exists
- **Old link rot**: If links in old content break, they can be fixed gradually - they won't block new content

The link checker runs automatically via [GitHub Actions](.github/workflows/check-links.yml) - you can see the results in the "Actions" tab of the repository and in PR checks.

### Link Checking Technical Details

This repository uses **htmltest** - a fast, Go-based HTML testing tool that validates links in static sites:

- **Comprehensive Checking**: Validates both internal and external links, images, scripts, and other resources
- **Automatic Checks**: Links are checked on every pull request and weekly via GitHub Actions
- **Non-Blocking**: Link checks are **informational only** and will not prevent site deployment

**Important:** Netlify builds are configured to **never fail** due to broken links. This prevents old link rot from blocking new content deployment. Link checking is performed in GitHub Actions where it provides visibility into issues without blocking the build.

#### About htmltest

[htmltest](https://github.com/wjdp/htmltest) is specifically designed for static site generators like Hugo:
- Fast parallel link checking
- Validates HTML, checks anchors, images, external links
- Configurable caching to avoid re-checking unchanged links
- No Node.js dependency (single Go binary)
- Used by many Hugo projects

#### Running Link Checker Locally

The build and link checking processes are separated:

```zsh
# Full workflow: build the site and check links
hugo --gc --minify --buildFuture && ./check-links.sh

# Or run separately:

# 1. Build the site
hugo --gc --minify --buildFuture

# 2. Check links (requires site to be built first)
./check-links.sh
```

**Note:** `check-links.sh` validates links in the built site and assumes the `public/` directory exists. Build the site first with Hugo.

The first time you run `./check-links.sh`, it will automatically download and install htmltest if it's not already available.

**Deployment Workflow:**
- **Netlify** builds the site without running link checks, ensuring deployments are never blocked by broken links
- **GitHub Actions** runs link checks on PRs and weekly, providing visibility into link health
- **Local testing** allows developers to check links before pushing changes

#### Configuration

Link validation settings are in [.htmltest.yml](.htmltest.yml):
- `CheckExternal: true` - Check external links
- `CheckInternal: true` - Check internal links and anchors
- `IgnoreURLs` - Skip checking specific domains (e.g., LinkedIn, which blocks bots)
- `CacheExpires` - Cache external link checks for 6 hours
- See [htmltest documentation](https://github.com/wjdp/htmltest) for all options

**For Maintainers: Adding URLs to Ignore List**

When a contributor requests a URL be ignored (because it's valid but blocks automated checkers):

1. Open [.htmltest.yml](.htmltest.yml) in GitHub
2. Click the pencil icon to edit
3. Find the `IgnoreURLs:` section
4. Add a new line with the domain pattern:
   ```yaml
   IgnoreURLs:
     # Social media sites that block automated requests
     - "linkedin.com"
     - "twitter.com"
     - "example.com"  # Add your new domain here
   ```
5. Add a comment above explaining why (optional but recommended)
6. Commit directly to the PR's branch or to `main`

The pattern matches any URL containing that text, so:
- `"linkedin.com"` blocks all LinkedIn URLs
- `"example.com/specific/path"` blocks only that specific path
- Patterns are case-insensitive

Hugo also validates internal references at build time with `refLinksErrorLevel: ERROR` in [config/_default/hugo.yaml](config/_default/hugo.yaml).

#### Testing the Link Checker

The link checker has an automated test suite to verify it's working correctly. See [tests/README.md](tests/README.md) for full details.

**Note:** The `tests/` directory is excluded from Hugo builds via `ignoreFiles` in [config/_default/hugo.yaml](config/_default/hugo.yaml), so test files won't appear in the generated site.

**Quick Test:**

```bash
cd tests
./run-tests.sh
```

This runs a comprehensive test suite that validates:
- ✅ Valid links pass correctly
- ❌ Broken links are detected
- 🔇 Ignored URLs (LinkedIn, Twitter) are skipped
- 🔗 Internal/external links, images, CSS, and scripts work correctly

The test suite includes sample HTML files with known good and bad links, and verifies that htmltest correctly identifies all issues. All tests should pass if the link checker is configured correctly.

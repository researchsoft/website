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

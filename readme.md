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

## Extra information

Due to limitations in the version of Hugo that Netlify runs,
changing the _style_ of the website will require pulling this entire
repo to a computer and building the site with hugo-extended. The resulting
files generated in
[resources/_gen/assets/scss/styles](https://github.com/researchsoft/website/tree/master/resources/_gen/assets/scss/styles>) then need to be committed back to the repository.

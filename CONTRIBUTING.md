# Contributing to ReSA website

:+1::tada: First off, thanks for taking the time to contribute! :tada::+1:

The following is a set of guidelines for contributing to the ReSA website,
which is hosted in the [ReSA Organization](https://github.com/researchsoft)
on GitHub. These are mostly guidelines, not rules. Use your best judgment,
and feel free to propose changes to this document in a pull request.

This guide is inspired from
[Atom's contributing guidelines](<https://github.com/atom/atom/blob/master/>
CONTRIBUTING.md).

## How Can I Contribute?

### Reporting Bugs

This section guides you through submitting a bug report for Research
Software Alliance. Following these guidelines helps maintainers understand your
report :pencil:, reproduce the behavior :computer: :computer:, and find
related reports :mag_right:.

Before creating bug reports, please check
[this list](#before-submitting-a-bug-report) as you might find out that you
don't need to create one. When you are creating a bug report, please
[include as many details as possible](#how-do-i-submit-a-good-bug-report).

> **Note:** If you find a **Closed** issue that seems like it is the same thing
that you're experiencing, open a new issue and include a link to the original
issue in the body of your new one.

#### Before Submitting A Bug Report

* **Perform a
[cursory search](<https://github.com/researchsoft/website/>
issues?q=is%3Aopen+is%3Aissue)** to see if the problem has already been
reported. If it has **and the issue is still open**, add a comment to the
existing issue instead of opening a new one.

#### How Do I Submit A (Good) Bug Report?

Bugs are tracked as GitHub issues. To report a bug, create an issue in the
[website repository](https://github.com/researchsoft/website) by filling in the
[bug report template](<https://github.com/researchsoft/website//issues/>
new?assignees=&labels=bug%2Cneeds+triage&projects=&
template=bug_report.yaml&title=BUG%3A+).

Explain the problem and include additional details to help maintainers
reproduce the problem:

* **Use clear and descriptive title** for the issue to identify the problem.
* **Describe the exact steps to reproduce the problem** n as many details as
possible. For example: which command do you use in the terminal or in GitHub
browser. Explain **how you did different steps, in addition to what you did**.
For example: if you moved your cursor to next line, please mention if you used
the mouse, or a keyboard button or a programming command in an IDE or GitHub
browser.
* **Provide specific examples to demonstrate the steps**. Include links to
files or GitHub projects, or copy/paste text or code.
* **Describe the behavior you observed after following the steps** and
point out the exact problem in that behaviour/output.
* **Explain what behaviour you expected to see instead and why**.
* **Include screenshots or animated GIF/video** which show how you followed the
steps and clearly demonstrate the problem in the output you observe.

Provide more context by answering the following questions:

* Can you reproduce the problem on another branch?
* Did the problem started happening recently i.e. in the new website (i.e. when
theme is `beautifulhugo`) or was this a problem in the older version too (i.e.
when theme is `Syna`)?
* **Can you reliably reproduce the issue?** If not, please describe how often
the problem occurs and under what conditions does it normally occur.
* If the problem is related to working with files (e.g. opening or editing
files), **does the problem occur for all the files and folders?** Does the
problem occur only when working with local or remote files (e.g., on network
drives), with specific type of file (e.g. .md or .html, etc.), with files with
large size, with files with more number of lines, with files with a specific
encoding? It there anything else specific about the files you are using?

### Suggesting Enhancements

#### Before Submitting An Enhancement Suggestion

#### How Do I Submit A (Good) Enhancement Suggestion?

### Pull Requests

### Style guide (Git Commit Messages)

* Use the present tense ("Add feature" not "Added feature")
* Use the imperative mood ("Move cursor to..." not "Moves cursor to...")
* Limit the first line to 72 characters or less
* Reference issues and pull requests liberally after the first line
* When only changing documentation, include `[ci skip]` in the commit title
* Consider starting the commit message with an applicable emoji:
  * :art: `:art:` when improving the format/structure of the code
  * :racehorse: `:racehorse:` when improving performance
  * :non-potable_water: `:non-potable_water:` when plugging memory leaks
  * :memo: `:memo:` when writing docs
  * :penguin: `:penguin:` when fixing something on Linux
  * :apple: `:apple:` when fixing something on macOS
  * :checkered_flag: `:checkered_flag:` when fixing something on Windows
  * :bug: `:bug:` when fixing a bug
  * :fire: `:fire:` when removing code or files
  * :green_heart: `:green_heart:` when fixing the CI build
  * :white_check_mark: `:white_check_mark:` when adding tests
  * :lock: `:lock:` when dealing with security
  * :arrow_up: `:arrow_up:` when upgrading dependencies
  * :arrow_down: `:arrow_down:` when downgrading dependencies
  * :shirt: `:shirt:` when removing linter warnings

### Additional Notes

#### Issue Labels

| Label Name | Description |
| --- | --- |
| `enhancement` | New feature or request |
| `bug` | Something is not working as expected |
| `question` | Further information is requested |
| `feedback` | General feedback more than bug reports or feature requests |
| `help wanted` | Extra attention is needed |
| `good first issue` | Easy issues that would be good for new contributors |
| `blocked` | Issues blocked/dependent on other issues |
| `duplicate` | This issue or pull request already exists |
| `wontfix` | This will not be worked on|
| `invalid` | This doesn't seem right (e.g. user error) |
| `wrong-repo` | Issues reported on the wrong repository |

#### Pull Request Labels

| Label Name | Description |
| --- | --- |
| `work-in-progress` | PRs which are still being worked on |
| `testing` | To test new or existing features, functions, or code |
| `needs-review`| To indicate that a pull request requires review |
| `under-review` | To indicate that a pull request is under review |

## Installing a new theme

This website is built on Hugo framework. To install a new Hugo theme, please
take the following steps:

### Assumptions

1. You have already installed Hugo on your machine
2. You have git installed on your machine and you are familiar with basic git
usage.

### Adding a new theme

* You can add a new theme as a submodule as follows:

```zsh
git submodule init # If you haven't initialized before
git submodule add https://github.com/halogenica/beautifulhugo.git 
themes/beautifulhugo # This would add the beautifulhugo theme
```

* The theme is successfully installed if you see it inside the `/themes`
directory (for example, in this case you will see `/themes/beautifulhugo/`).
* To use the theme, make sure that you set it accordingly in the `config.toml`:

```zsh
theme = "theme_name"
```

**Note**: Here `"theme_name"` is the exact name of the theme as mentioned in
the `/themes` directory (for example, in this case it will be
`theme = "beautifulhugo"`).

## Adding a table

Here is a step-by-step demo about making a table:

### Create a basic table

* A vertical line `|` should be added to both the ends of each row.
* Separate the columns by a vertical line `|`.
* The column header can be separated from the remaining row by using three or
more dashes `---`.

For example, the below code will result in the table that follows it:

```zsh
| Country| Capital City |
| --- | --- |
| Canada | Ottawa |
| Australia | Canberra |
| Egypt | Cairo |
```

| Country| Capital City |
| --- | --- |
| Canada | Ottawa |
| Australia | Canberra |
| Egypt | Cairo |

Here are the steps to **format** the table:

### Text Alignment

* To align text in the columns to the left, right, or center add a colon `:` to
the left, right, or on both side of the dashes`---` within the header row.
* `:--`: left alignment
* `--:`: right alignment
* `:-:`: center alignment

For example, the below code will result in the table that follows it:

```zsh
| Country| Capital City |
| :---: | :---: |
| Canada | Ottawa |
| Australia | Canberra |
| Egypt | Cairo |
```

| Country| Capital City |
| :---: | :---: |
| Canada | Ottawa |
| Australia | Canberra |
| Egypt | Cairo |

### Going to next line

To go to next line in a row, use `\`.

```zsh
| Country | Capital City |
| --- | --- |
| Canada | Ottawa |
| Australia | Canberra |
| Egypt | Cairo |
```

| Country | Capital City |
| --- | --- |
| Canada | Ottawa |
| Australia | Canberra |
| Egypt | Cairo |

**Note**:  the text in the table can be further formatted. For example, adding
links, inline code (words or phrases in backticks only, not code blocks).

## Adding an image

Here is a step-by-step demo about how to add an image using an IDE:

* Clone the `website` repository from <https://github.com/researchsoft>.
* Upload the image to the folder website/static/images.
* Add image details to appropriate .md file using the following code:

```zsh
+++
title = ""
#weight =

[asset]
    image = "image_name_with_file_extension"
    url = "https://www.volkswagenstiftung.de/en"
    text = "Volkswagen Foundation logo"
+++
```

**Note**:

* Here `"image_name_with_file_extension"` is the exact name of the image as
mentioned in the `/static` directory.
* `text` is used to give a short description of the image.
* `url` is an optional attribute. It is used if we want to hyperlink the image
with some relevant link.
* Image caption:
...

Step x: How to add caption?

Step (x+1): How to change size of the image?

Step (x+2): How to add alt text?

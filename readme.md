# Research Software Alliance Website

[![Netlify Status](https://api.netlify.com/api/v1/badges/b366fc0d-c20f-4312-a573-b3de6fa243fc/deploy-status)](https://app.netlify.com/sites/researchsoft/deploys)

This repository contains the source files that generates the Research Software Alliance website. The repository is monitored by [Netlify](https://www.netlify.com/), which generates and hosts the live website.

The website uses the [Hugo framework](https://gohugo.io/) with the [Syna theme](https://themes.gohugo.io/syna/). All content files are written in Markdown and are processed into HTML by Netfliy.

## Editing content

The only files that should be edited as a matter of course are in [content](https://github.com/researchsoft/website/tree/master/content). Images generally go into [static/images](https://github.com/researchsoft/website/tree/master/static/images).

When editing existing content, it is possible to use the GitHub text editor interface to make changes. When viewing the file you would like to edit, click the Edit button to make your changes. If you do not have permissions for the repository directly, you will need to submit a pull request for an administrator to adopt the changes.

There is a [newsletter template](https://github.com/researchsoft/website/tree/master/newsletter-template) that can assist in creating a new newsletter.

Due to limitations in the version of Hugo that Netlify runs, changing the _style_ of the website will require pulling this entire repo to a computer and building the site with hugo-extended. The resulting files generated in [resources/_gen/assets/scss/styles](https://github.com/researchsoft/website/tree/master/resources/_gen/assets/scss/styles]) then need to be committed back to the repository.
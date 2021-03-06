---
templateKey: 'blog-post'
title: Writing This Documentation
date: 2018-11-03T01:24:10.000Z
description: This documentation page is the first and will be a test.
tags:
  - gatsby
  - markdown
---

Writing This Documentation
==========================

This documentation is maintained in this Github repository
https://github.com/moldfield/transparenc-docs . It is written in
[reStructuredText](http://sphinx-doc.org/rest.html) using the
[Sphinx](http://sphinx-doc.org/) tool that auto generates
documentation in html and presents it in the [Read the
Docs](http://docs.readthedocs.io/en/latest) theme.

The [Read the Docs Account](https://readthedocs.org/dashboard/)
automatically updates and rebuilds the documentation upon pushing new
commits to the Github repository attached to the account. The
documentation is built in responsive html, PDF and Epub formats and is
available for download in any of the versions that are created over time
in multiple languages.

- [Git Branch Control](https://github.com/Kunena/Kunena-Forum/wiki/Create-a-new-branch-with-git-and-manage-branches)
- [reStructuredText Substitutions](http://www.sphinx-doc.org/en/stable/markup/inline.html#default-substitutions)

Some Useful Git Commands
========================

The most common commands are

``` bash

   $ git add --all

   $ git add .

   $ git commit -m "Your message"

   # Commit to branch
   $ git push origin [your-branch]

   # Don't do this unless ready to merge
   $ git push origin master

   # Creating a new branch and switching into it
   $ git checkout -b [new-branch]

   # Merging and pulling
   $ git fetch --all
   $ git fetch --hard origin/[your-branch]
```

When you need to combine changes made somewhere else with your current
branch.

`$ git pull origin other-branch`

Git is basically doing this

`$ git fetch origin other-branch && git merge other-branch`

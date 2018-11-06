---
templateKey: blog-post
title: Pandoc markup converter
date: 2016-12-17T15:04:10.000Z
description: Pandoc can convert between numerous markup and word processing formats, including, but not limited to, various flavors of Markdown, HTML, LaTeX and Word docx.
tags:
  - file-formats
  - markdown
---
# Pandoc

To convert most text formats, [Pandoc](http://pandoc.org/demos.html) is a great CLI tool.

**From Pandoc's man page**

> Pandoc can convert between numerous markup and word processing formats, including, but not limited to, various flavors of Markdown, HTML, LaTeX and Word docx. For the full lists of input and output formats, see the --from and --to options below. Pandoc can also produce PDF output: see creating a PDF, below.
> Pandoc's enhanced version of Markdown includes syntax for tables, definition lists, metadata blocks, footnotes, citations, math, and much more.  See below under Pandoc's Markdown.

## Try Online

You can try [Pandoc online here](http://pandoc.org/try/) to convert reStructured Text to Markdown or any 
other combination of around 20 different formats.

## Examples

``` bash
  $ pandoc --from rst --to markdown <file.rst> -o <file.md>
```

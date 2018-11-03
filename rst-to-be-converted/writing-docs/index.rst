Writing Sphinx |rst| |docs|
=============================

.. Variables
.. include:: ../vars.rst

Installing necessary packages to build Sphinx
-----------------------------------------------

.. code-block:: bash
	
	sudo apt-get update \
	&& sudo apt-get -y install texlive-latex-base latexmk \
	&& sudo apt-get update

Basic Structure
-----------------

.. Basic structure file
.. literalinclude:: basic-structure.rst

.. _rst-pitfalls-sec:

Pitfalls
----------

Two link variables in some cases cannot have the same base URL. A quick fix to this is to use an anonomous link by using two underscores.

.. code-block:: rst
   
   `Some Link Text <http://example.com>`__

.. _code-block-languages-sec:

Code Block Syntax Highlighters
---------------------------------

The ``code-block`` directive uses a library called Pigments to highlight the code inserted. Here is a useful table of languages that can be used.

.. list-table::
   :header-rows: 1
   
   *  -  Lexer
      -  Shortname
      
   *  -  Structured Query Language
      -  sql
      
   *  -  PostgreSQL dialect of SQL
      -  postgresql
      
   *  -  PostgreSQL procedural language
      -  plpgsql
      
   *  -  PostgreSQL console sessions
      -  psql
      
   *  -  ReStructured Text
      -  rst
   
   *  -  TeX and LaTeX
      -  latex
      
   *  -  DOS/Windows batch file
      -  bat
   
   *  -  Windows PowerShell
      -  powershell
      
   *  -  Bash shell scripts
      -  bash
      
   *  -  Bash shell sessions
      -  console
      
   *  -  Cascading Style Sheets
      -  css
      
   *  -  HTML 4 and XHTML 1
      -  html
   
   *  -  XML
      -  xml
   
   *  -  XSLT
      -  xslt
   
   *  -  XQuery
      -  xquery
      
   *  -  JavaScript
      -  javascript
   
   *  -  JSON data structures
      -  json
   
   *  -  PHP source code
      -  php
      
   *  -  PHP embedded in HTML
      -  html+php
      
   *  -  Python 2
      -  python
   
   *  -  Python 2 tracebacks
      -  pytb
   
   *  -  Python console
      -  pycon
   
   *  -  Java 
      -  java
   
   *  -  Configuration file in the Java's properties format
      -  jproperties
   
   *  -  Configuration file in the Apache config file format
      -  apacheconf
      
   *  -  R source code (or S, or S-plus)
      -  r
      
   *  -  R console
      -  rout
      
   *  -  Matlab
      -  matlab
      
   *  -  Matlab sessions
      -  matlabsession
      
   *  -  NumPy
      -  numpy

.. _rst-resources-sec:

Resources
----------

* `reStructured text for writers <rstForWriters_>`_ - Blog post about |rst|
* `reStructured text documentation <rstDocs_>`_ - Official |docs|
* `reStructured text cheat sheet <rstCheatSheet_>`_ - Cheat sheet written by matplotlib creators
* `Sphinx documentation <sphinx_>`_ - Official |docs|
* `Read The Docs Sphinx <rtdSphinx_>`_ - RTD styleguide
* `Useful table of contents info <sphinxToc_>`_ - Learn about glob matching and other include tricks

.. _rstForWriters: http://ericholscher.com/blog/2016/jul/1/sphinx-and-rtd-for-writers/
.. _rstDocs: http://docutils.sourceforge.net/rst.html
.. _rtdSphinx: https://documentation-style-guide-sphinx.readthedocs.io/en/latest/style-guide.html
.. _rstCheatSheet: https://thomas-cokelaer.info/tutorials/sphinx/rest_syntax.html
.. _sphinx: http://www.sphinx-doc.org/en/stable/
.. _sphinxToc: https://svn.python.org/projects/external/Sphinx-1.2/doc/markup/toctree.rst

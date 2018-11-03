Documentation
==================

.. Variables
.. include:: vars.rst

|AppVersion|

General development specifications for |AppName|.

Writing This Documentation
---------------------------

This documentation is maintained in this Github repository `<https://github.com/moldfield/transparenc-docs>`_ . It is written in `reStructuredText <http://sphinx-doc.org/rest.html>`_ using the `Sphinx <http://sphinx-doc.org/>`_ tool that auto generates documentation in html and presents it in the `Read the Docs <http://docs.readthedocs.io/en/latest>`_ theme.

The `Read the Docs Account <https://readthedocs.org/dashboard/>`_ automatically updates and rebuilds the documentation upon pushing new commits to the Github repository attached to the account. The documentation is built in responsive html, PDF and Epub formats and is available for download in any of the versions that are created over time in multiple languages.

* `Git Branch Control`_
* `reStructuredText Substitutions`_

.. _Git Branch Control: https://github.com/Kunena/Kunena-Forum/wiki/Create-a-new-branch-with-git-and-manage-branches
.. _reStructuredText Substitutions: http://www.sphinx-doc.org/en/stable/markup/inline.html#default-substitutions

Some Useful Git Commands
-------------------------

The most common commands are

.. code-block:: bash

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

When you need to combine changes made somewhere else with your current branch.

``$ git pull origin other-branch``

Git is basically doing this

``$ git fetch origin other-branch && git merge other-branch``

Updating User Role Capabilities
-------------------------------

In the ``wp_options`` table, edit the ``wp_user_roles`` by removing the role in question. Then deactivate and activate the |AppName| plugin.

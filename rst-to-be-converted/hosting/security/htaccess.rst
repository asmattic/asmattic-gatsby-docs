``.htaccess``
==============

.. Variables
.. include:: ../../vars.rst

Password Protect Website Sections
-----------------------------------

`Password protect specific areas of a site <htaccessPasswordProtect_>`_ from a single file to a subdomain to a full domain. 

.. code-block:: bash
	
	AuthType Basic
	AuthUserFile /.htpasswds/.htpasswd
	AuthName "Enter Password"

	# To allow any user in the .htpasswd file
	Require valid-user

	# Only allow a specific user
	Require exampleUser


The ``.htpasswd`` file is just a colon separated list of usernames and passwords with one user per line. The passwords are encrypted with the MD5 hash algorithm.

.. code-block:: bash

	# User test with password test
	test:$apr1$2FJ7tQH4$NSyHPKo3C0KNtr8kHLMYW0


.. note::

	Make sure to keep the ``.htpasswd`` file outside any directories available to the outside world.


.. _htaccessPasswordProtect: http://www.javascriptkit.com/howto/htaccess3.shtml

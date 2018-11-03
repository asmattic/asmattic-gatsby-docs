Deploy Apps to Heroku
======================

.. Variables
.. include:: ../vars.rst

.. note::
	Unless otherwise specified this will refer to running a node JS server.

Setup Heroku CLI
-----------------

First `install the Heroku CLI <herokuCli_>`_ and login in order to attach your local project with the heroku `git` remote.

.. _herokuCli: https://devcenter.heroku.com/articles/getting-started-with-nodejs#set-up

Custom Domains
---------------

Login to the heroku cli and type in ``heroku domains:add <example.io>``. Then ``heroku domains`` to list out the **DNS Targets** to create **CNAME** records pointing to.

.. note::
	In **GoDaddy** you can not point the naked domain ``example.io`` to the Heroku **DNS Target**. You can only point a subdomain like ``www.example.io`` to the **DNS Target** and forward the named domain to the subdomain. This is primarily because `A` records require an IP address and Heroku doesn't have fixed IPs.

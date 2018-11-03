Deployment, Hosting and Security
=================================

.. Variables
.. include:: ../vars.rst

* :ref:`hosting_security_sec`
* :ref:`hosting_optimization_sec`

.. _hosting_security_sec:

.. toctree::
	:maxdepth: 2
	:glob:
	:caption: Security

	./security/htaccess

.. _hosting_optimization_sec:

.. toctree::
	:maxdepth: 2
	:glob:
	:caption: Optimization

	./optimization/htaccess

Siteground
-----------

Content Delivery Network (CDN)

`Setting up Cloud Flare <cloudFlareSetup_>`_ on `Siteground <siteground_>`_

.. _siteground: https://www.siteground.com/
.. _cloudFlareSetup: https://blog.cloudflare.com/cloudflare-tips-recommended-steps-after-activ/

SSH
-----

Secure Shell

SSHFS
~~~~~~~

* `SSHFS <sshfs_>`_
* `SSHFS Installation <sshfs-install_>`_

To copy files over SSH or SFTP you can mount a remote directory using `SSHFS <sshfs_>`_.

.. note::
	The `Stack Exchange <https://unix.stackexchange.com/questions/2857/ssh-easily-copy-file-to-local-system?noredirect=1&lq=1>`_ answer that let me to this has some other useful quick ways to forward a connection or copy over small files.

.. _sshfs: https://github.com/libfuse/sshfs
.. _sshfs-install: https://www.digitalocean.com/community/tutorials/how-to-use-sshfs-to-mount-remote-file-systems-over-ssh

.. code-block:: bash

	mkdir ~/cdn
	sshfs cdn.example.com: ~/cdn
	rsync -au ~/mystuff/dir/ ~/cdn/dir/

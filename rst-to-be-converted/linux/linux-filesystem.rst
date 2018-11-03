Linux Filesystem
=================

.. Variables
.. include:: ../vars.rst

/etc
------

/etc/passwd
~~~~~~~~~~~~

File that lists all users with all information that pertains to them. Here is an example line.

.. TODO: Explain what each item is
.. code-block:: bash

   asmattic:x:1000:1000:asmattic,,,:/home/asmattic:/bin/bash

Pull out just the users from the file. This could be put into an array to find the non-sudo user inside of a bash script.

.. code-block:: bash

   $ awk -F':' '{ print $1}' /etc/passwd

Reading Permissions
-----------------------

Permissions are broken up into four groups. The first group is one character and the other three groups are each comprised of three characters. A dash (``-``) in any place other than the first (`type`) character means that the permission usually at that location is not in effect.

.. list-table::
   :header-rows: 0

   *  - Item Type
      - ``-`` (file)
      - ``d`` (directory)
      - ``l`` (link)

   *  -  Owner Permissions
      -  ``r`` (read)
      -  ``w`` (write)
      -  ``x`` (executable)

   *  -  Group Permissions
      -  ``r`` (read)
      -  ``w`` (write)
      -  ``x`` (executable)

   *  -  Any User Permissions
      -  ``r`` (read)
      -  ``w`` (write)
      -  ``x`` (executable)

   *  - ``0`` (none)
      - ``1`` (execute)
      - ``2`` (write)
      - ``4`` (read)


Open files from terminal
---------------------------

To open a file in the default browser.

.. code-block:: bash

   $ xdg-open /path/to/index.html

Using /proc
--------------

.. note::
   The ``/proc`` directory is actually a pseudo-filesystem. The files in ``/proc`` mirror currently running system and kernel processes and contain information and statistics about them. (`source: fibrevillage.com <http://fibrevillage.com/scripting/604-how-to-use-proc-in-bash>`_)

Common Issues
------------------

The `/boot` folder is out of space. This is usually the cause of a build up of kernal backups. To free up some space, just run `sudo apt autoremove` and the older, no longer necessary files will be removed.

 - `Stack Overflow question used for explanation <https://askubuntu.com/questions/785460/boot-partition-filling-up-is-this-a-bug-in-ubuntu?utm_medium=organic&utm_source=google_rich_qa&utm_campaign=google_rich_qa>`_

.. code-block:: bash

   sudo apt autoremove

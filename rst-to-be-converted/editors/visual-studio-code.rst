Visual Studio Code
======================

.. Variables
.. include:: ../vars.rst

Setup
-------

.. note::
   "Visual Studio Code is unable to watch for file changes in this large workspace" (error ENOSPC)

When you see this notification, it indicates that the VS Code file watcher is running out of handles because the workspace is large and contains many files. The current limit can be viewed by running:

.. code-block:: bash

   cat /proc/sys/fs/inotify/max_user_watches

The limit can be increased to its maximum by editing ``/etc/sysctl.conf`` and adding this line to the end of the file:

.. code-block:: bash

   fs.inotify.max_user_watches=524288

The new value can then be loaded in by running ``sudo sysctl -p``.

.. note::
   On Ubuntu, if ``alt`` + ``click`` drags the window instead of creating multiple cursors, run the below command in the terminal.

.. code-block:: bash
   
   gsettings set org.gnome.desktop.wm.preferences mouse-button-modifier "<Super>"

Recommended Settings
-----------------------

.. code-block:: json

   {
      "gitlens.advanced.messages": {
         "suppressShowKeyBindingsNotice": true
      },
      "gitlens.gitExplorer.files.layout": "tree",
      "git.autofetch": true,
      "editor.tabSize": 3,
      "editor.fontSize": 16,
      "editor.multiCursorModifier": "ctrlCmd",
      "git.enableSmartCommit": true,
      "git.confirmSync": false,
      "editor.wordWrap": "on",
      "editor.renderWhitespace": "all"
   }

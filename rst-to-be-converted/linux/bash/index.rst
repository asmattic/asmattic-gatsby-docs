Bash
======

.. Variables
.. include:: ../../vars.rst


Terminal
---------

General tips and ``~/.bashrc`` functions and settings to make the Linux experience better.

Name terminal tabs
~~~~~~~~~~~~~~~~~~~

I found this workaround in `this Stack Exchange answer <https://unix.stackexchange.com/a/186167/166226>`_.

Insert the below function into ``~/.bashrc``. Open a new terminal tab with ``Ctrl`` + ``Shift`` + ``t`` and type ``set-title <some terminal title>``.

.. code-block:: bash

   function set-title() {
      if [[ -z "$ORIG" ]]; then
         ORIG=$PS1
      fi
      TITLE="\[\e]2;$*\a\]"
      PS1=${ORIG}${TITLE}
   }

Close terminal
~~~~~~~~~~~~~~~~~

``Ctrl`` + ``Shift`` + ``w``

Bash Tips
-----------

Utilizing bash command history
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

This information was pulled from `this DigitalOcean tutorial <https://www.digitalocean.com/community/tutorials/how-to-use-bash-history-commands-and-expansions-on-a-linux-vps>`_ .

Store extra history by changin a few parameters in ``~/.bashrc`` for the number of lines to be stored in memory and in the actual history file.

.. code-block:: bash

   HISTSIZE=5000        # lines in memory
   HISTFILESIZE=10000   # lines to disk

Append to history file instead of overwriting it in every new terminal session.

.. code-block:: bash

   shot -s histappend

This following line will allow for each terminal session to have access to all of the commands being used in any other open terminal sessions instead of having to wait for a session to close before having access to it's commands.

.. code-block:: bash

   export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

All together now. Open ``~/.bashrc``.

.. code-block:: bash

   HISTSIZE=5000        # lines in memory
   HISTFILESIZE=10000   # lines to disk

   shot -s histappend

   PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

   # Ignore commands that start with a space because they are probably a mistake
   # Also ignore duplicates typed in succession
   HISTCONTROL=ignorespace:ignoredups

   # Shorthand for ignoring both
   HISTCONTROL=ignoreboth

   # Set a date format to identify when commands were run
   HISTTIMEFORMAT="%m/%d/%y %T  "

Close ``~/.bashrc``.

Source ``~/.bashrc`` to make the changes take effect immediately.

.. code-block:: bash

   $ source ~/.bashrc

Viewing and using bash history
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The bash history file is usually stored in ``/home/<user>/.bash_history``. You can check the path on any given machine with ``echo $HISTFILE``.

View commands in history.

.. code-block:: bash

   # View all commands
   $ history

   # View last 10 commands
   $ history 10

   # View all cd commands
   $ history | grep cd


Executing a command from history.

.. code-block:: bash

   # Execute command 10 from history
   $ !<commandNumber>

   # Example
   $ !10

   # Execute the command ran two executions ago
   $ !-<timesCalledAgo>

   # Example
   $ !-2

   # Execute previous command
   $ !!

   # Example (run previous command as sudo)
   $ sudo !!

Get hardware of computer
~~~~~~~~~~~~~~~~~~~~~~~~~~

 - ``-html`` outputs as html

.. code-block:: bash

   $ sudo lshw -html > computer_hardware.html

Print PCI hardware
~~~~~~~~~~~~~~~~~~~~~~~~~~

.. code-block:: bash

   $ lspci -nn

List USB Hardware
~~~~~~~~~~~~~~~~~~~~~~~~~~

.. code-block:: bash

   $ lsusb

Turn off wifi Power management
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. code-block:: bash

   $ sudo iwconfig <interface name (e.g. wlan0)> power off

List modules
~~~~~~~~~~~~~~~~~~~~~~~~~~

.. code-block:: bash

   $ lsmod

Kill radio signals ( check on this)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. code-block:: bash

   $ rfkill

List channels available for device
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. code-block:: bash

   $ iwlist chan

Scan channels
~~~~~~~~~~~~~~~~~~~~~~~~~~

.. code-block:: bash

   $ iwlist scan

List out scripts from package.json
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. code-block:: bash

   $ cat package.json | jq -r ".scripts"

Find and print directory
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. list-table::
   :header-rows: 1

   * - Argument
     - Description
   * - ``-maxdepth``
     - level of directories to go from the base directory passed
   * - ``-type``
     - ``d`` for directory, ``f`` for file
   * - ``-name``
     - String that can use special characters like ``*`` before and after to use as contains
   * - ``-print``
     - Print the directory name
   * - ``-quit``
     - Stop after the find case has been found true (*don\'t include ``-quit`` if you want to find all instances and not just stop at the first*)

.. code-block:: bash

   $ find ~ -maxdepth 5 -type d -name '*electron-cra*' -print -quit


File/Folder Permissions
-------------------------------

Permissions for files and folders are grouped in three different sections; `user`, `group` and `other`. To set permissions for each, use the ``chmod`` or \"change mode\" command.

.. code-block:: bash

   # add -R to modify recursively
   $ sudo chmod u=rwx,g=rx,o=r <myfile>

.. csv-table:: Chmod digits
   :header: "Digit", "Permission"

   4, "read"
   2, "write"
   1, "execute"
   0, "no permission"

.. _bash-compression-sec:

Compression
-------------

Tar `(Tape Archiver)`
~~~~~~~~~~~~~~~~~~~~~~~

.. csv-table:: Compression Options
   :header: "Option", "Description"

   "``-c``", "Create archive"
   "``-z``", "Gzip archive"
   "``-v``", "Display progress (verbose)"
   "``-f``", "Specify filename"
   "``--exclude``", "Specify files, folders or patterns to not extract"
   "``-x``", "Extract archive"
   "``-C``", "Specify directory to extract to"

.. code-block:: bash

   # zip
   $ tar -czvf <archive-to-create.tar.gz> <folder-to-compress> --exclude="*.pdf"

   # unzip
   $ tar -xzvf <file-to-extract.tar.gz> -C <folder-to-extract-to>

Count Output
--------------

To count various things in a file or output you can use ``wc``.

.. csv-table:: Compression Options
   :header: "Option", "Thing to count"

   "``-c``", "bytes"
   "``-m``", "chars"
   "``-l``", "lines"
   "``-w``", "words"

.. code-block:: bash

   # count lines of output
   $ <command-with-output> | wc -l

.. _bash-storage-sec:

Storage
---------

To list memory used by various drives and folders

.. code-block:: bash

   # list storage
   $ du -h

Clean up filesystem

.. code-block:: bash

   $ sudo apt-get clean

.. _bash-network-sec:

Network
--------

`nmap cheat sheet <nmapCheatSheet_>`_

.. _nmapCheatSheet: https://highon.coffee/blog/nmap-cheat-sheet/

Setting up network ``ssid`` and ``psk`` can be done in the ``/etc/wpa_supplicant/wpa_supplicant.conf`` file.

You can also use ``sudo ifquery <interface>`` to find where the interface is getting it's configuration. Here is an example response.

.. code-block:: bash

   wpa-conf: /etc/wpa_supplicant/wpa_supplicant.conf


There are a lot of other options like setting priority of networks and naming that can be found `on the wiki here <wpaSupplicant_>`_.

.. _wpaSupplicant: https://wiki.archlinux.org/index.php/WPA_supplicant

.. code-block:: bash

   # Mandatory
   network={
      ssid="NETWORK_SSID"
      psk="PASSWORD"

   }

Netcat
~~~~~~~~

From the official Netcat website. `Netcat DigitalOcean tutorial <https://www.digitalocean.com/community/tutorials/how-to-use-netcat-to-establish-and-test-tcp-and-udp-connections-on-a-vps>`_

`Netcat is a featured networking utility which reads and writes data across network connections, using the TCP/IP protocol.`

Features:

   * Outbound and inbound connections, TCP or UDP, to or from any ports.
   * Featured tunneling mode which allows also special tunneling such as UDP to TCP, with the possibility of specifying all network parameters (source port/interface, listening port/interface, and the remote host allowed to connect to the tunnel (**remote shells**).
   * Built-in **port-scanning** capabilities, with randomizer.
   * Advanced usage options, such as buffered send-mode (one line every N seconds), and hexdump (to stderr or to a specified file) of trasmitted and received data.

Scan ports on a domain

.. note::
   ``netcat`` and ``nc`` can be used interchangeably

Scan ports 1 through 1000 on domain.com

.. code-block:: bash

   $ netcat -z -v domain.com 1-1000

.. note::

   ``nmap`` is probably a better port scanning tool for most uses

Connect linux machine to Windows machine

.. code-block:: bash

   # Listen on port 31337 to connect to windows machine
   $ sudo nc -lp 31337 -e /bin/bash

   # On Windows
   C:\ > nc <linux_ip> <port>
   C:\ > nc <linux_ip> 31337

   C:\ > useradd -g root mMyNewUser
   C:\ > grep myNewUser /etc/passwd/ # output myNewUser:x:1001:0::/home/myNewUser:/bin/sh
   C:\ > tail /etc/passwd



Predictable Network Names
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

This is the naming system used when you see more complex names for interface devices than ``wlan0``

List ``PCI`` interfaces

``lspci``

Change Mac Address
~~~~~~~~~~~~~~~~~~~~~~

Bring card down

``ifconfig <interface> down``

Change the address to any octet

``ifconfig <interface> hw ether dd:dd:dd:dd:dd``

Bring it back up

``ifconfig <interface> up``

Restart Network
~~~~~~~~~~~~~~~~~

Using wlan0 as an example.

Turn off

``sudo ifdown wlan0``

Turn on

``sudo ifup wlan0``

Restart network manager entirely. Setting an interface to monitor mode will require this to get the wifi back up.

``sudo network-manager restart``

.. _bash-ubuntu-sec:

Ubuntu `(and other distros)`
-------------------------------

Check the version of distro

``lsb_release -a``

For `Ubuntu 17.04` the mouse speed doesn't respond to the normal settings interface `but here is the best fix <mouse_speed_ubuntu_>`_

.. _mouse_speed_ubuntu: https://askubuntu.com/questions/205676/how-to-change-mouse-speed-sensitivity

Install Wireshark
~~~~~~~~~~~~~~~~~~~

#. Update PPA to latest stable version

``sudo add-apt-repository ppa:wireshark-dev/stable``

#. Allow superuser to run Wireshark when it asks during installation.

#. Integrate new changes

``sudo apt-get update``

#. Install

``sudo apt-get install wireshark``

#. If you selected no initially and want to change it later, run

``sudo dpkg-reconfigure wireshark-common``

Bash Scripting
===============

Use the backtick ` \` ` character to output to a variable rather than the console

.. code-block:: bash

   var_one=`cat ls | grep .txt`

Installing an array of packages

.. code-block:: bash

   package_list=(
      package1
      packageN
   )

   # The @ destructures the array members
   sudo apt-get -y install ${package_list[@]}

Commands that depend on previous commands completing successfully

.. code-block:: bash

   # In terminal
   command1 && command2 && command3

   # In script
   # Backslash lets bash know these lines are one command
   command1 \
   && command 2 \
   && command 3

Run commands regardless of previous commands success or failure

.. code-block:: bash

   # In terminal
   command1; command2; command3

   # In script
   # Just put each on it's own line
   command1
   command2
   command3


Loops
-------

.. code-block:: bash

   some_arr=(
      "thing1"
      "thingN"
   )

   for i in "${some_arr[@]}"
   do
      echo $i
   done

Put Multiline Output into Variable
------------------------------------
.. _variable_output_bash: https://stackoverflow.com/questions/4651437/how-to-set-a-variable-to-the-output-from-a-command-in-bash

`Variable output in bash <variable_output_bash_>`_

.. code-block:: bash

   #!/bin/sh

   SOME_VAR="$(ls -a)"

Users
-------

Return user

.. code-block:: bash

   $ echo $(whoami)

Creating a Symbolic Link (Symlink) to a Program
--------------------------------------------------

It is good practice to create a symlink in a directory all users can visit like ``/usr/local/bin``. If the program is user specific, you can place the file to run in that user's ``~/bin``.

To create the symlink, ``ln`` is the link command and ``-s`` makes the link symbolic.

.. code-block:: bash

   sudo ln -s /path/to/file /usr/local/bin/<name_of_new_command>

Make the file executable

.. code-block:: bash

   chmod +x /path/to/file


Check if OS is 32 or 64 bit
------------------------------

.. code-block:: bash

   if [ `getconf LONG_BIT` = "64" ]; then
      cd /path/to/64bit/file
      ./forticlientsslvpn
   else
      cd /path/to/32bit/file
      ./forticlientsslvpn
   fi

Check if program is installed
--------------------------------

What command should I use to check to see if a progrem is installed.

`which, hash, type, command <https://unix.stackexchange.com/questions/85249/why-not-use-which-what-to-use-then?noredirect=1&lq=1>`_

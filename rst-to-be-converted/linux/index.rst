Linux
=======

.. Variables
.. include:: ../vars.rst

.. |gdebi| replace:: GDebi
.. _gdebi: https://itsfoss.com/gdebi-default-ubuntu-software-center/

.. _linux-installing-deb-packages-sec:

Installing ``.deb`` files
--------------------------

There is a |cli|_ called |gdebi|_ that is much more light weight than the traditional Ubuntu Software Center.

.. code-block:: bash

   $ sudo apt-get install gdebi

After installing just right click on a ``.deb`` file and go to properties to make |gdebi|_ the default installer.

Fresh Ubuntu Install
----------------------

Increase the number of files that can be watched at any given time. This most often happens with nodejs.

.. code-block:: bash

	$ echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p

Github
~~~~~~~~

.. code-block:: bash

	$ sudo apt-get install git

`Generate <https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/>`_ and `install SSH key <https://help.github.com/articles/adding-a-new-ssh-key-to-your-github-account/>`_

.. code-block:: bash

	$ ssh-keygen -t rsa -b 4096 -C "your_email@example.com"

	# Start SSH in the background
	$ eval "$(ssh-agent -s)"

	# Add SSH private key to ssh-agent
	$ ssh-add ~/.ssh/id_rsa

	# Copy the public key generated into Github
	$ cat ~/.ssh/id_rsa.pub

GitKraken
~~~~~~~~~~~

.. code-block:: bash

   # Download .deb file
   $ wget https://release.gitkraken.com/linux/gitkraken-amd64.deb

   # Install
   $ sudo dpkg -i gitkraken-amd64.deb


Nodejs
~~~~~~~

Install with `nvm`

.. code-block:: bash

	# Make sure the tools that build packages are installed
	$ sudo apt-get install build-essential libssl-dev

	# Download the install script
	$ curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash

	# If running nvm returns command not found, run
	$ command -v nvm

	# If that doesn't work resource .bashrc
	$ source ~/.bashrc

	# Close and reopen terminal, check all available node versions
	$ nvm ls-remote

	# Install desired version
	$ nvm install vX.XX.X

	# Use the downloaded version
	# nvm use default

	# Close and reopen in order to check the version being used
	$ node -v


Filezilla
~~~~~~~~~~

.. code-block:: bash

	# Add apt-key to Ubuntu so it trusts the packages about to be added
	$ wget -q -O - http://archive.getdeb.net/getdeb-archive.key | sudo apt-key add -

	# Add the GetDeb repository which builds FileZilla for Ubuntu 16.04
	$ sudo sh -c 'echo "deb http://archive.getdeb.net/ubuntu xenial-getdeb apps" >> /etc/apt/sources.list.d/getdeb.list'

	# Install from previously added sources
	$ sudo apt update && sudo apt install filezilla


Sublime Text 3
~~~~~~~~~~~~~~~

Packages:

   1. SidebarEnhancements
   2. Terminal
   3. Color Highlighter
   4. FileDiffs
   5. HighLighter Bracket
   6. DocBlockr
   7. DocBlockr Python
   8. A File Icon

Themes and general Sublime user preferences:

Predawn theme with Monokai `color_scheme`

.. code-block:: json

   {
		"color_scheme": "Packages/Predawn Monokai/Predawn Monokai.tmTheme",
		"theme": "predawn-DEV.sublime-theme",
		"predawn_tabs_active_underline": true,
      "tab_size": 3,
      "translate_tabs_to_spaces": true,
      "font_size": 14,
      "folder_exclude_patterns": [
         "node_modules",
         "bower_components"
      ]
	}


.. code-block:: bash

	# Add apt-key to Ubuntu so it trusts the packages about to be added
	$ wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -

	# Add apt sources to sources.list
	$ echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list

	# Install from previously added sources
	$ sudo apt update && sudo apt install sublime-text


Google Chrome
~~~~~~~~~~~~~~~

.. code-block:: bash

	# Add apt-key to Ubuntu
	$ curl -s https://updates.signal.org/desktop/apt/keys.asc | sudo apt-key add -

	# Add apt sources to sources.list
	$ echo "deb [arch=amd64] https://updates.signal.org/desktop/apt xenial main" | sudo tee -a /etc/apt/sources.list.d/signal-xenial.list

	# Install from previously added sources
	$ sudo apt update && sudo apt install signal-desktop

Postman
~~~~~~~~~

.. code-block:: bash

	# Get the gzipped file
	$ wget https://dl.pstmn.io/download/latest/linux64 -O postman.tar.gz

	# Unzip it
	$ sudo tar -xzf postman.tar.gz -C /opt

	# Remove the initial gzipped file
	$ rm postman.tar.gz

	# Move to proper application directory
	$ sudo ln -s /opt/Postman/Postman /usr/bin/postman

	# Create a Unity desktop file so Postman is searchable in Unity launcher
	$ cat > ~/.local/share/applications/postman.desktop <<EOL
	  [Desktop Entry]
	  Encoding=UTF-8
	  Name=Postman
	  Exec=postman
	  Icon=/opt/Postman/resources/app/assets/icon.png
	  Terminal=false
	  Type=Application
	  Categories=Development;
	  EOL

Signal
~~~~~~~

End to end encrypted messaging service

.. code-block:: bash

	# Add apt-key to Ubuntu
	$ curl -s https://updates.signal.org/desktop/apt/keys.asc | sudo apt-key add -

	# Add apt sources to sources.list
	$ echo "deb [arch=amd64] https://updates.signal.org/desktop/apt xenial main" | sudo tee -a /etc/apt/sources.list.d/signal-xenial.list

	# Install from previously added sources
	$ sudo apt update && sudo apt install signal-desktop


Install Pip
~~~~~~~~~~~~~

.. code-block:: bash

   # Update and upgrade existing packages
   $ sudo apt-get update && sudo apt-get -y upgrade

   # Install pip
   $ sudo apt-get install python-pip

   # Check that it's installed by checking the version
   $ pip -V

   # Expected example return format
   # pip 8.1.1 from /usr/lib/python2.7/dist-packages (python 2.7)

   # Update Pip
   $ pip install --upgrade pip

   # Search for a package with Pip
   $ pip search package_name

   # Pip options and examples
   $ pip --help


Sphinx
~~~~~~~

.. code-block:: bash

   # Install from apt
   $ sudo apt-get install python-sphinx

   # Install from Pip
   $ sudo pip install -U sphinx

`sphinx_rtd_theme` is no longer a hard dependency and must be installed manually

.. code-block:: bash

   # Install sphinx_rtd_theme
   $ sudo pip install sphinx_rtd_theme

Gatsby Static Site Generator
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

`React based static site generator <https://www.gatsbyjs.org/docs/>`_ with a robust plugin system and a GraphQL data layer.

.. code-block:: bash

   $ npm install --global gatsby-cli

Ubuntu Software Center Installs
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

   1. `VLC <https://www.videolan.org/vlc/download-ubuntu.html>`_
   2. `Slack <https://slack.com/downloads/linux>`_

Kerbal Space Program (KSP)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Using the Steam gaming platform download KSP which works on Ubuntu 16.04.4

Application Links Not Opening Properly In Chrome
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

From `this Stack Overflow article <https://askubuntu.com/questions/689449/external-links-are-opened-as-blank-tabs-in-new-browser-window-in-chrome>`_

The issue is with ``google-chrome.desktop``, and it is missing the ``%U`` argument .

Open file: ``$HOME/.local/share/applications/google-chrome.desktop``

Find the line:

.. code-block:: bash

   Exec=/opt/google/chrome/chrome

Add a space and ``%U`` to make it

.. code-block:: bash

   Exec=/opt/google/chrome/chrome %U

Then save the file.

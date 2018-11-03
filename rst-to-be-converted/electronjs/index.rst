Electron
=========

.. Variables
.. include:: ../vars.rst

Essential Electron
--------------------

	* `Essential Electron <http://jlord.us/essential-electron/_>`_
	* `Electron with React Router v4 <https://github.com/mrpatiwi/electron-react-desktop-template_>`_
	* `Electron Docs <https://electron.atom.io/docs>`__
	* `Electron React boilerplate with Flow Webpack React Transform Redux <https://www.npmjs.com/package/electron-react-boilerplate_>`_


Using with create-react-app
-----------------------------

Some pull requests on the main |cra|_ GitHub repo for integration with |electron|_.



Basic App Usage
-----------------

Some tips on how to make the app feel more native.

To make text not selectable apply css to inputs

.. code-block:: css

	.my-ui-text {
		-webkit-user-select: none;
	}

Deploying
-----------

Many of the deployment tips and code snippets below are taken from the following list of articles.

* `Tips for building cross platrofm Electron apps <distro_tips_>`_
* `Publish a release of an Electron app <publish_electron_release_>`_

.. _distro_tips: https://blog.avocode.com/blog/4-must-know-tips-for-building-cross-platform-electron-apps
.. _publish_electron_release: https://ourcodeworld.com/articles/read/262/how-to-build-publish-a-release-distribution-of-an-electron-application-with-the-cli

Code sign your Electron application with electron-builder
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

* `Code signing with electron builder <code-signing-electron-builder_>`_
* `Code signing Egghead.io tutorial <code-signing-egghead_>`_

.. _code-signing-electron-builder: https://www.electron.build/code-signing
.. _code-signing-egghead: https://egghead.io/lessons/javascript-code-sign-your-electron-application-with-electron-builder

Before going into more detail on the differences on each distro, here is a summary of some of the most obvious things to account for in each.

Icons
~~~~~~

.. csv-table::
	:header: "Item", "Linux (Ubuntu)", "Windows", "Mac OS"

	"Icon Type", "``.png``", "``.ico``", "``.icns``"

To create the ``.ico`` and ``.icns`` files from the original ``.png`` (use 1024 x 1024px) there are a few commands.

	#. For Windows, run it through ``icotools`` to get an ``.ico``:

		``icontool -c icon.png > icon.ico``

	#. For macOS, run it through ``png2icns`` to get an ``.icns``:

		``png2icns icon.icns icon.png``

Automatically select proper icon for the target distro.

.. note::
	Make sure to change the version, app name, etc

.. code-block:: bash

	$ electron-packager . MyApp --icon=img/icon --platform=all --arch=all --version=0.36.0 --out=../dist/ --asar

**Icon Sizes**

.. list-table::
   :header-rows: 1

   *  - Size (px)
      - Mac OSX
      - Windows
      - Linux

   *  - 1024
      - `y`
      - `y`
      - `y`

   *  - 512
      - `y`
      - `y`
      - `y`

   *  - 256
      - `y`
      - `y`
      - `y`

   *  - 128
      - `y`
      - `y`
      - `y`

   *  - 64
      - `y`
      - `y`
      - `y`

   *  - 48
      - `y`
      - `y`
      - `y`

   *  - 32
      - `y`
      - `y`
      - `y`

   *  - 24
      - `y`
      - `y`
      - `y`

   *  - 16
      - `y`
      - `y`
      - `y`

Startup Background Color
~~~~~~~~~~~~~~~~~~~~~~~~~~

Set background color so that it doesn't seem like a browser on startup even though it is.

.. code-block:: javascript

	mainWindow = new BrowserWindow({
		title: 'ElectronApp',
		backgroundColor: '#002b36'
	};

Hide Application Until Page Loaded
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. code-block:: javascript

	var mainWindow = new BrowserWindow({
		title: 'ElectronApp',
		show: false,
	};

Linux (Ubuntu)
~~~~~~~~~~~~~~~~

.. code-block:: javascript

	mainWindow = new BrowserWindow({
		title: 'ElectronApp',
		icon: __dirname + '/app/assets/img/icon.png',
	};

Windows
~~~~~~~~

Mac
~~~~

Copy and paste is not turned on by default

.. literalinclude:: ./mac-copy-paste.js

.. _electron_react_boilerplate_sec:

Electron React Boilerplate


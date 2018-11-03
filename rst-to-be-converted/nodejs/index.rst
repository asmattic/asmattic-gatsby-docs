Node JS
=========

.. Variables
.. include:: ../vars.rst

.. _nodejs-toc-sec:

.. toctree::
   :maxdepth: 2
   :glob:
   :caption: Nodejs TOC

   node-cli
   node-streams


.. _nodejs-resources-sec:

Node JS
--------

Some resources.

* `Node JS <nodejsSite_>`_- The main node js website
* `Node Version Manager <nvm_>`_ - Manages node versions locally and globally

.. _nodejsSite: https://nodejs.org/en/
.. _nvm: https://github.com/creationix/nvm/blob/master/README.md

.. _nvm_sec:

Node Version Manager
-----------------------

Reset permissions to current user rather than sudo

.. code-block:: bash

   sudo chown -R $(whoami) ~/.npm

.. code-block:: bash

   find . -name "node_modules" -exec rm -rf '{}' +


Listing
~~~~~~~~~

.. code-block:: bash

   # List installed node versions
   $ nvm ls

If you want to see what versions are available to install:

.. code-block:: bash

   # List installed node versions
   $ nvm ls-remote

.. _npm-section:

Node Package Manager (``npm``)
-------------------------------

Reset permissions to current user rather than sudo

.. code-block:: bash

   npm config get prefix

   # if not just in /usr
   sudo chown -R $(whoami) $(npm config get prefix)/{lib/node_modules,bin,share}


Update ``npm``

.. code-block:: bash

    $ npm i -g npm

Checking for outdated packages, the latest versions and the minimum required versions.

.. code-block:: bash

    $ npm outdated [-g]

Updating a specific package.

.. code-block:: bash

    $ npm update [-g] <package>

List all installed packages and their dependencies in a tree structure.

.. code-block:: bash

    $ npm ls

Removing a package

.. code-block:: bash

    $ npm remove [-g] <package>

.. _socket-io-section:

Socket
----------

.. note::
   Make sure you start the socket on the server and not the app itself with express

* `Socket IO docs <socketIoDocs_>`_ - Official |docs|

.. literalinclude:: socket-io.js

.. _socketIoDocs: https://socket.io/docs

Node Useful Packages
----------------------

 - `Awesome NPM <https://github.com/sindresorhus/awesome-npm>`_  - List of npm resources

Express Server
~~~~~~~~~~~~~~~~~~~


 - `async <https://www.npmjs.com/package/async>`_
 - `chalk <https://www.npmjs.com/package/chalk>`_ terminal colors
 - `express <https://www.npmjs.com/package/express>`_
 - `lodash <https://www.npmjs.com/package/lodash>`_
 - `socket.io <https://socket.io/docs>`_
 - `moment <https://www.npmjs.com/package/moment>`_ - date lib
 - `commander <https://www.npmjs.com/package/commander>`_  - CLI builder and mgmt tool
 - `cors <https://www.npmjs.com/package/cors>`_  - Node.js CORS middleware
 - `body-parser <https://www.npmjs.com/package/body-parser>`_  -Node.js body parsing middleware
 - `jsonwebtoken <https://www.npmjs.com/package/jsonwebtoken>`_  - An implementation of `JSON Web Tokens <https://tools.ietf.org/html/rfc7519>`_.
 - `passport-jwt <https://www.npmjs.com/package/passport-jwt>`_  - This module lets you authenticate endpoints using a JSON web token. It is intended to be used to secure RESTful endpoints without sessions.
 - `cookie-parser <https://www.npmjs.com/package/cookie-parser>`_  -
 - `morgan http request logger <https://www.npmjs.com/package/morgan>`_  -
 - `serve-favicon <https://www.npmjs.com/package/serve-favicon>`_  - favicon serving middleware with caching
 - `compression <https://www.npmjs.com/package/compression>`_  -
 - `nodemailer <https://www.npmjs.com/package/nodemailer>`_
 - `dotenv <https://www.npmjs.com/package/dotenv>`_  - Loads environment variables from .env file
 - ` <>`_  -
 - ` <>`_  -
 - ` <>`_  -
 - ` <>`_  -
 - ` <>`_  -
 - ` <>`_  -

Process Manager
~~~~~~~~~~~~~~~~~

 - `pm2 <https://www.npmjs.com/package/pm2>`_  -
 - ` <>`_  -
 - ` <>`_  -
 - ` <>`_  -
 - ` <>`_  -
 - ` <>`_  -



Express Authentication
~~~~~~~~~~~~~~~~~~~~~~~~

 - `passport <https://www.npmjs.com/package/passport>`_  - Simple, unobtrusive authentication for Node.js.
 - ` <>`_  -
 - ` <>`_  -
 - ` <>`_  -
 - ` <>`_  -
 - ` <>`_  -

Documentation
~~~~~~~~~~~~~~~~

 - `Docusaurus <https://www.npmjs.com/package/docusaurus>`_  -
 - `esdoc <https://www.npmjs.com/package/esdoc>`_  - ESDoc is a documentation generator for JavaScript.
 - ` <>`_  -

Styling Code and Linting
~~~~~~~~~~~~~~~~~~~~~~~~~
 - `eslint <https://www.npmjs.com/package/eslint>`_  - An AST-based pattern checker for JavaScript.
 - ` <>`_  -
 - ` <>`_  -
 - ` <>`_  -
 - ` <>`_  -
 - ` <>`_  -
 - ` <>`_  -
 - ` <>`_  -
 - ` <>`_  -
 - ` <>`_  -

Database
~~~~~~~~~~~
 - `Mongoose <https://www.npmjs.com/package/mongoose>`_  - mongoDB lib that has Schemas, etc.
 - ` <>`_  -
 - ` <>`_  -
 - `cheerio <https://www.npmjs.com/package/cheerio>`_  - Tiny, fast, and elegant implementation of core jQuery designed specifically for the server used for web scraping
 - ` <>`_  -
 - ` <>`_  -
 - ` <>`_  -
 - ` <>`_  -
 - ` <>`_  -
 - ` <>`_  -
 - ` <>`_  -
 - ` <>`_  -
 - ` <>`_  -

Styling
~~~~~~~~

 - `styled-components <https://www.npmjs.com/package/styled-components>`_  -
 - ` <>`_  -
 - ` <>`_  -
 - ` <>`_  -
 - ` <>`_  -
 - ` <>`_  -
 - ` <>`_  -
 - ` <>`_  -
 - ` <>`_  -
 - ` <>`_  -

Testing
~~~~~~~~

 - `jest <https://www.npmjs.com/package/jest>`_  -
 - `mocha <>`_  -
 - `chai <https://www.npmjs.com/package/chai>`_  - BDD/TDD assertion library for node.js and the browser. Test framework agnostic.
 - `istanbul <https://www.npmjs.com/package/istanbul>`_  - Code coverage

React
~~~~~~

 - `react <https://www.npmjs.com/package/react>`_  -
 - `react-router <https://www.npmjs.com/package/react-router>`_  -
 - `redux <https://www.npmjs.com/package/redux>`_  -
 - `react-dom <https://www.npmjs.com/package/react-dom>`_  -
 - `babel-preset-react <https://www.npmjs.com/package/babel-preset-react>`_  -
 - `redux-thunk <https://www.npmjs.com/package/redux-thunk>`_  - Thunk middleware for Redux.
 - ` <>`_  -
 - ` <>`_  -
 - ` <>`_  -
 - ` <>`_  -
 - ` <>`_  -
 - ` <>`_  -
 - ` <>`_  -
 - ` <>`_  -
 - ` <>`_  -
 - ` <>`_  -
 - ` <>`_  -
 - ` <>`_  -
 - ` <>`_  -
 - ` <>`_  -
 - ` <>`_  -
 - ` <>`_  -
 - ` <>`_  -
 - ` <>`_  -
 - ` <>`_  -
 - ` <>`_  -
 - ` <>`_  -
 - ` <>`_  -
 - ` <>`_  -
 - ` <>`_  -
 - ` <>`_  -
 - ` <>`_  -

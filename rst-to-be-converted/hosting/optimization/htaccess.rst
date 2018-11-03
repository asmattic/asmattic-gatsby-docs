Optimization with ``.htaccess``
================================

.. Variables
.. include:: ../../vars.rst

From a `Siteground post on WordPress Optimization <wordpressOptimize_>`_ here are some simple things that can improve site performance.

.. _wordpressOptimize: https://www.siteground.com/tutorials/wordpress/optimize_wordpress.htm

gZIP compression
-----------------------------------

Compress files before sending to the client.

.. code-block:: bash

	## ENABLE GZIP COMPRESSION ##
	AddOutputFilterByType DEFLATE text/plain
	AddOutputFilterByType DEFLATE text/html
	AddOutputFilterByType DEFLATE text/xml
	AddOutputFilterByType DEFLATE text/css
	AddOutputFilterByType DEFLATE application/xml
	AddOutputFilterByType DEFLATE application/xhtml+xml
	AddOutputFilterByType DEFLATE application/rss+xml
	AddOutputFilterByType DEFLATE application/javascript
	AddOutputFilterByType DEFLATE application/x-javascript
	## ENABLE GZIP COMPRESSION ##

.. _browser-caching-sec:

Browser caching
----------------

.. code-block:: bash

	## LEVERAGE BROWSER CACHING ##
	<IfModule mod_expires.c>
	ExpiresActive On
	ExpiresByType image/jpg "access 1 year"
	ExpiresByType image/jpeg "access 1 year"
	ExpiresByType image/gif "access 1 year"
	ExpiresByType image/png "access 1 year"
	ExpiresByType text/css "access 1 month"
	ExpiresByType application/pdf "access 1 month"
	ExpiresByType application/x-javascript "access 1 month"
	ExpiresByType application/javascript "access 1 month"
	ExpiresByType application/x-shockwave-flash "access 1 month"
	ExpiresByType image/x-icon "access 1 year"
	ExpiresDefault "access 2 days"
	</IfModule>
	## LEVERAGE BROWSER CACHING ##

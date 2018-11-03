Common Issues
==============

.. Variables
.. include:: ../vars.rst

Android
--------

Specific to Android.

Naming Conventions
~~~~~~~~~~~~~~~~~~~~

The Android Open Source Project style guidelines have some common patterns that are in many projects and examples so here are a few to watch out for.

**Field Naming Conventions**

	* Non-public, non-static field names start with ``m``.
	* Static field names start with ``s``.
	* Other fields start with a ``lower case`` letter.
	* Public static final fields (constants) are ``ALL_CAPS_WITH_UNDERSCORES``.

Java
-----

Specific to Java or Androids supported features of Java.

Android Studio
----------------

Specific to Android Studio.

File accidently created as text file
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

If a file is created and for any reason is not registered as a ``.java`` file or ``.class`` file, follow these steps.

* Go to ``file -> settings -> file types``.
* Find the type that your file appears to be (check ``text``).
* Select that type and look for the name of your file and delete it from that file type so it can take it's rightful place as a ``.java`` file.

Debugging
-----------

Debugging over wifi can be done if you are unable to have the phone plugged into the computer while testing for any reason. This is done using `adb devices`

.. code-block:: bash
	
	# Check devices it can find
	adb devices

	#
	adb tcpip 5555

	# Connect with IP address
	adb connect <IP ADDRESS>

	# Disconnect
	adb disconnect <IP ADDRESS>


* `Debug over wifi 1 <https://futurestud.io/tutorials/how-to-debug-your-android-app-over-wifi-without-root_>`_
* `Debug over wifi 2 <https://choicetechlab.com/blog/debug-apps-without-usb-cord_>`_
* `Debug over wifi 3 <https://developer.android.com/studio/debug/index.html_>`_

Raspberry Pi Resources
========================

.. Variables
.. include:: ../vars.rst

For the Raspberry Pi
---------------------

Some resources.

* `Raspberry Pi <raspberryPiSite_>`_ - The main website of Raspberry Pi

.. _raspberryPiSite: https://www.raspberrypi.org/

* `Aircrack Ng Raspberry Pi <http://kamilslab.com/2016/01/11/how-to-install-aircrack-ng-suite-on-the-raspberry-pi>`_ - Install `aircrack-ng` suite on the raspberry pi.

Rename hostname
-----------------

All files to edit:

	* `/etc/hosts <etc-hosts-sec_>`_
	* `/etc/hostname <etc-hostname-sec_>`_
	* `/etc/init.d/hostname.sh`
	* `/etc/hostapd/hostapd.conf`
	* `/etc/machine-info <etc-machine-info-sec_>`_
	* `/boot/hostnames`
	* `/etc/machine-info`

.. _etc-hosts-sec:

Edit `/etc/hosts`
~~~~~~~~~~~~~~~~~~~

.. code-block:: bash

	# Change this line
	127.0.1.1 raspberrypi

	# To this line
	127.0.1.1 <newhostname>

.. _etc-hostname-sec:

Edit `/etc/hostname`
~~~~~~~~~~~~~~~~~~~~~~~~

.. code-block:: bash

	# Just change the name

.. _etc-machine-info-sec:

Edit `/etc/machine_info`
~~~~~~~~~~~~~~~~~~~~~~~~~~~~
.. TODO figure out best way to replicate github commit style

:red:`-     PRETTY_HOSTNAME=oldhostname`

:green:`+ PRETTY_HOSTNAME=newhostname`

.. code-block:: bash

	:red:`- PRETTY_HOSTNAME=oldhostname`
	:green:`+ PRETTY_HOSTNAME=newhostname`

Ubuntu Mate
---------------

ssh setup
~~~~~~~~~~~~

Grab OpenSSH for device.

Remote/Pi machine

.. code-block:: bash

   sudo apt-get update
   sudo apt-get install openssh-server
   sudo ufw allow 22
   sudo /etc/init.d/ssh restart

   # Make sure it is enabled

In order to remove the remote computers key stuff
This below was found
# Host 192.168.1.13 found: line 10
/home/asmattic/.ssh/known_hosts updated.
Original contents retained as /home/asmattic/.ssh/known_hosts.old


Get required GPIO modules for python

.. code-block:: bash

   $ sudo apt-get update && sudo apt-get install python-rpi.gpio python3-rpi.gpio

Create ``blink.py``

.. code-block:: python

   import RPi.GPIO as GPIO
   import time

   LedPin = 11    # pin11

   def setup():
      GPIO.setmode(GPIO.BOARD)       # Numbers GPIOs by physical location
      GPIO.setup(LedPin, GPIO.OUT)   # Set LedPin's mode is output
      GPIO.output(LedPin, GPIO.HIGH) # Set LedPin high(+3.3V) to turn on led

   def blink():
      while True:
         GPIO.output(LedPin, GPIO.HIGH)  # led on
         time.sleep(1)
         GPIO.output(LedPin, GPIO.LOW) # led off
         time.sleep(1)

   def destroy():
      GPIO.output(LedPin, GPIO.LOW)   # led off
      GPIO.cleanup()                  # Release resource

   if __name__ == '__main__':     # Program start from here
      setup()
      try:
         blink()
      except KeyboardInterrupt:  # When 'Ctrl+C' is pressed, the child program destroy() will be  executed.
         destroy()

Can't install programs because admin dir is in use
-------------------------------------------------------

*E: Could not get lock /var/lib/dpkg/lock - open (11: Resource temporarily unavailable)*
*E: Unable to lock the administration directory (/var/lib/dpkg/), is another process using it?*

.. note::

   You can use sudo lsof ``/var/lib/dpkg/lock`` to find the process that owns the lock file (if empty, assume the lock is left over from a previous boot and can be ``sudo rm`` d), then consider doing a ``sudo kill -9 <PID>`` (get <PID> from ``lsof`` output.

`You can also try the general Ubuntu package manager troubleshooting procedure <https://help.ubuntu.com/community/PackageManagerTroubleshootingProcedure>`_

Interfaces
------------

SPI
~~~~~~~~~

`Serial Peripheral Interface <https://learn.sparkfun.com/tutorials/serial-peripheral-interface-spi>` - *Serial Peripheral Interface (SPI) is an interface bus commonly used to send data between microcontrollers and small peripherals such as shift registers, sensors, and SD cards. It uses separate clock and data lines, along with a select line to choose the device you wish to talk to.*

`Control two external hardware peripherals with Raspberry Pi SPI <http://radiostud.io/understanding-spi-in-raspberry-pi/>`_

I2C
~~~~~~~~~

`Inter-Integrated Circuit <https://learn.sparkfun.com/tutorials/i2c>`_ -
*The Inter-integrated Circuit (I2C) Protocol is a protocol intended to allow multiple “slave” digital integrated circuits (“chips”) to communicate with one or more “master” chips. Like the Serial Peripheral Interface (SPI), it is only intended for short distance communications within a single device. Like Asynchronous Serial Interfaces (such as RS-232 or UARTs), it only requires two signal wires to exchange information.*

` Linux I2C Tools <https://i2c.wiki.kernel.org/index.php/I2C_Tools>`_

Differences between SPI and I2C
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

`The below was found on radiostud.io <http://radiostud.io/howto-i2c-communication-rpi/>`_

 - SPI needs 4 pins for the communication, and additional slave select logic for selecting slaves, whereas I2C requires only 2 pins to connect any number of slaves.
 - SPI is good for high data rate full-duplex (simultaneous sending and receiving of data) connections, supporting clock rates upwards of 10MHz (and thus, 10 million bits per second) for some devices, and the speed scales nicely.
 - Unlike SPI, I2C supports multi-master hardware connection which is useful for industrial applications where one sensor needs to to be controlled and accessed by multiple master devices.

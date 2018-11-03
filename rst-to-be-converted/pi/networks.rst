Network Setup
==================

.. Variables
.. include:: ../vars.rst

For the Raspberry Pi
--------------------------

About the pi.

.. code-block:: bash

   # Searching for the local IP address
   $ nmap -sn 192.168.1.0/24

   # Get ip address info
   $ ip addr show

   # Get IP address from machine
   $ hostname -I

GPIO info

``gpio -v``

If wiringPi isn't working properly

.. code-block:: bash

   # Remove wiringpi
   $ sudo apt-get purge wiringpi
   $ hash -r

   # Install git
   $ sudo apt install git-core && sudo apt update

   # Clone wiringPi git repo and build
   $ git clone git://git.drogon.net/wiringPi
   $ cd wiringPi && ./build

   # Test that it's working
   $ gpio -v
   $ gpio readall


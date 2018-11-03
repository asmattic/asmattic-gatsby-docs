Running Shell Commands In Python Program
===========================================

.. Variables
.. include:: ../vars.rst

Subprocess
-------------

Process Groups
~~~~~~~~~~~~~~~~

* `Stack Overflow answer <https://stackoverflow.com/questions/4789837/how-to-terminate-a-python-subprocess-launched-with-shell-true>`_

.. code-block:: python

	import os
	import signal
	import subprocess

	# The os.setsid() is passed in the argument preexec_fn so
	# it's run after the fork() and before  exec() to run the shell.
	proc = subprocess.Popen(cmd, stdout=subprocess.PIPE, shell=True, preexec_fn=os.setsid)

	os.killpg(os.getpgid(proc.pid), signal.SIGTERM)  # Send the signal to all the process groups


Reading line by line output
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

* `Stack Overflow reading line by line answer <https://stackoverflow.com/questions/2715847/python-read-streaming-input-from-subprocess-communicate/17698359#17698359>`_

* `Endpoint.com getting realtime output with poll and shlex lib <http://blog.endpoint.com/2015/01/getting-realtime-output-using-python.html>`_


Python 2

.. code-block:: python

	#!/usr/bin/env python2
	from subprocess import Popen, PIPE

	p = Popen(["cmd", "arg1"], stdout=PIPE, bufsize=1)
	with p.stdout:
		for line in iter(p.stdout.readline, b''): # b'' is a bytes literal
			print line,
	p.wait() # wait for the subprocess to exit


Python 3

.. code-block:: python

	#!/usr/bin/env python3
	from subprocess import Popen, PIPE

	with Popen(["cmd", "arg1"], stdout=PIPE, bufsize=1, universal_newlines=True) as p:
		for line in p.stdout:
			print(line, end='')

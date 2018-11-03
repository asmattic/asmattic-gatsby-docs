Python
=======

.. Variables
.. include:: ../vars.rst

* `Python Tips Sphinx styled book <http://book.pythontips.com/en/latest/>`_
* `Python ActiveState recipies <https://github.com/ActiveState/code/tree/master/recipes/Python>`_
* `Real Python site and course <https://realpython.com/blog/python/inner-functions-what-are-they-good-for/>`_

State Management
-----------------

.. note::
	You can also just pass state through functions.

Redux-like state management is done with a Finite State Machine (FSM) in which

* `Python Table Driven State Machine <https://python-3-patterns-idioms-test.readthedocs.io/en/latest/StateMachine.html>`_


\*args and \*\*kwargs
-----------------------

* `Python Tips explanation <http://book.pythontips.com/en/latest/args_and_kwargs.html>`_

* \*args is a variable number of non-keyworded arguments (val) usually in a function definition
* \*\*kwargs is a variable number of keyworded arguments (key, val) in a function definition

Parsing a JSON File
----------------------

.. code-block:: python

	# File is an array of onjects that are only one level deep

	import json

	all_things_text = []

	with open('things.txt') as json_things:
		things = json.load(json_things)
		for thing in things:
			all_things_text.append(thing['text'])
			print('\n Thing %s \n %s \n' % (thing['id'], thing['text']))

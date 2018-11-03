Vim
====

Here is the GitHub repo for `monokai syntax highlighting <https://github.com/sickill/vim-monokai_>`_

Here is my GitHub `repo for automating this installation <https://github.com/asmattic/configs_>`_

.. code-block:: bash

	# create the necessary dirs
	mkdir -p $HOME/.vim/colors

Here is the file to place in ``~/.vim/colors``

.. literalinclude:: monokai.vim

Find and replace
------------------

To find and replace ``item1`` with ``item2`` and have it ask for each item.

.. code-block:: bash
    
    # Esc key to go to command mode
    :%s/item1/item2/gc

* ``%s`` for find and replace
* ``g`` alone wouldn't ask, it would just replace
* ``gc`` asks for each case
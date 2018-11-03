Running Git Commands In Python
================================

.. include:: ../vars.rst

Due to the environment specific complexities with running certain git commands in bash scripts, ``GitPython`` is supposed to take care of some of that.


.. code-block:: bash
    
   $ sudo -H pip install GitPython


.. note::

   ``-H, --set-home``
      Request that the security policy set the HOME environment
      variable to the home directory specified by the target user's
      password database entry.  Depending on the policy, this may
      be the default behavior.
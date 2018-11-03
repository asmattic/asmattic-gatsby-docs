JavaScript Interview Questions
=================================

.. Variables
.. include:: ../vars.rst

**Question**



**Answer**

**

**Example**

.. code-block:: javascript

   // interviewer: what will the following code output?
   const arr = [10, 12, 15, 21];
   for (var i = 0; i < arr.length; i++) {
     setTimeout(function() {
       console.log('Index: ' + i + ', element: ' + arr[i]);
     }, 3000);
   }
Tutorial – How to create a new order
====================================

This tutorial will help through the process of creating an order.

Assumptions
----------
At this point it is assumed that ``Suppliers`` and ``Articles`` already exists and are up to date!
Please see the tutorials to do so.

Depending on your foodcoop, updating prices and conditions is also your part of the job!

Create an order
-------------------------------------------------
In foodsoft it is only possible to create an order for a supplier. It is not possible to create an order based on articles which are received by different suppliers.
Therefore it is quite easy to create new orders.

There are multiple posibilities:

* ``Orders`` – ``Manage orders`` – ``Create new order`` select supplier.
* ``Articles`` – ``Suppliers/articles`` – click on the name of the supplier – ``articles`` – ``Create new order``

It is also possible to copy an old order:
``Orders`` – ``Manage orders`` – ``Closed`` – ``Copy``

#. Prepare the new order

   #. Set ``Start``/``End``/``Pickup`` dates
   #. Set ``End action``
   #. (Un)select articles

#. Click ``Create order``

Preparing a new order
-------------------
Timing and/or dates
^^^^^^^^^^^^^^^^^^^
* ``Starts at``: Has no effect, just leave it as it is.
* ``Ends at``: [optional] Ending of the order and triggers the ``End action``, can be empty.
* ``Pickup``: [optional] This is only an informational field! Because the date of pickup influences the decision of placing the order. Can be emtpy.
* ``End action``: This will happen at date given by ``Ends at``.
The email and minimum quantity are set under ``Articles`` – ``Suppliers/articles``.

Available articles
^^^^^^^^^^^^^^^^^^
Article availability changes from time to time. Unchecked ``articles`` will not be shown in the order.


Finally hit the ``Create order``-button.
The order is now visible under ``Current orders`` in the ``Dashboard`` or ``Orders`` – ``Place order!``.


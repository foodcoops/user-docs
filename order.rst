=========
Order
=========

The general idea
================

The principle of foodsoft is that to receive their products, the cells associate to place **orders**
to the suppliers. That's how it goes:

- An order list corresponding to a supplier, for example 'Sugar and services', is first put online by a member of the Boufcoop,
- this list remains accessible for a certain time to all the members, who can choose the quantity of the different products that they wish to order,
- on the scheduled date, the order is closed, we can not change it anymore,
- a person then takes care of recovering the quantities of each product and to contact the supplier,
- the products are delivered. It happens that the delivery does not correspond exactly to the order (errors, products unavailable, misunderstandings, last minute price change, losses ...).
- the products are distributed among the cells, remaining as close as possible to their initial wishes,
- a person carefully compares the actual quantities received by each cell and their orders, and makes the final **count** of the order.

Orders can be in three states: **in progress**, **closed** or **counted**. The countdown phase allows
to make sure that what is paid for by the cells corresponds to what they have received. It is explained more in
detail in the section :ref:`finance`.
To order, each cell has some credit. The current credit of your cell is displayed on your
dashboard. More detailed information is provided on the page *Placing an order*, accessible under
the *Commands* tab of the main menu. The credit is broken down into three parts:

- credit committed to ongoing orders,
- credit committed in orders already closed, but not yet counted,
- available credit

To order
===================

Once on the page *Place an order*, accessible under the tab *Orders* of the main menu, if you click
on the name of a supplier for whom he exits an order in progress, you land on the order list. The inset at the top left contains some useful information about the order:

- the person who created the list,
- the planned closing date, from which the order will not be modifiable,
- the amount already committed by all the cells on this order,
- the available credit of your cell.

Choose products
--------------------

You will find below this insert the list of products offered for this order. It's not necessarily about
of all the products of the supplier-e, since the person who creates the order list has had the possibility
to select only a subset (see :ref:`management`).

For each product, you must choose the number of units you want to order. The unit varies according to the
product (1kg, 75cl, ...), and is therefore indicated in the column *unit* of the table (4th column). The price of a unit
is shown in the column *price* (3rd column). To increase or decrease the number of units you want
for your cell, use the + and - buttons of the 6th column (quantity).

As the products are offered by the supplier-e in the form of lots (see :ref:`lots`), as long as it is missing
units to complete the current batch, you are not sure to receive the product. This number is displayed in the
5th column (*Missing*). The number of units you are not sure to receive appears in red, while the
number that appears in green is safe.

Tolerance
---------

The quantity that you indicate as *tolerance* is a maximum that you are ready to receive, in addition to the quantity
ordered normally, in case it allows to complete a lot at the time of the closing of the order.
If there is no lot to complete, this quantity will simply be ignored. Putting a non-zero tolerance
when your orders is beneficial for all of the boufcoop, as this increases the chances of completing
some lots that otherwise could not be ordered. Moreover, it can even encourage other people
who need more of the product than you to order, because you will give them more hope that the lot is
completed.

	**Example**:

	The banana cell really needs 3 chocolate chips. But chocolate can not be delivered
	only in batches of 8 platelets. Banana therefore orders 3 pads, plus a tolerance of 2, the maximum
	that she can afford to pay, hoping that another cell will complete the order.

	The next day, Fig cell sees this. It only needs one plate, and the command
	so. At this point there are 4 pads in firm order, plus a tolerance of 2, so the lot does not
	can still not be completed! Fortunately, the Apple cell sees that only two are missing
	platelets to complete the lot, she is sure to have her chocolate. She orders three plates.

	The coop receives 8 platelets. Fig and Apple have their platelets ordered, and so
	4. Banane receives his 3 platelets, plus 1 bonus, which fits well in his margin of tolerance.
	Everyone is happy, whereas if nobody had indicated tolerance, the delivery would not have
	maybe not even possible!


.. _management:

Order management
=====================

The *Order Management* page is accessible under the *Orders* tab of the main menu, but only if
you are part of a team that has access to it. This option can be configured by an administrator in the
parameters of each team.

Define a new order
-----------------------------

To define a new command, click on the button at the top right of the page, and select the name of a
email provider. You can then choose the dates of opening and closing of the order, as well as the articles that you
wish to make it appear. The list of articles can be modified from :ref:`products`. A
Once the command has been created, it will appear in the current command list and the cells will be able to start
order.

Closing and sending
-------------------

To close the order, click the *Close* button from the *Order Management* page. The date
closure is given as an indication, orders must always be closed manually. Once
order closed, you land on the summary page of the quantities ordered. You can also access this
page from the *Order Management*, by clicking the *Show* button to the right of the closed order
desired.

The most convenient way to transmit the order to the supplier is the *Fax in PDF*, accessible from the
menu *Download* (even if you send it by email and not by fax). Indeed, the table obtained simply summarizes
the number of lots to be ordered for each product, as well as the price, but does not mention the distribution
between the cells (which does not usually interest the supplier).

Reception and verification
--------------------------

Once delivery has arrived safely, it may be wise to check its contents to take into account
any changes to the order (unavailable products, price changes ...). The button
*Receive* accessible from the *Order Management* page validates this verification step.
The table that appears summarizes the quantities ordered for each product, and you must enter in the
adequate column the quantity actually received after verification. By clicking on the *Edit* button, you can
even change the price of each product if it turned out that there was an error. Finally, we can even add
a product to the list if the delivery contains products that were not present in the order list
(gifts, last minute changes ...).

If you wish, you can leave comments (at the bottom of the order management page)
to keep track of all these changes, which can be useful when counting and billing (see :ref:`finance`).

Distribution between cells
------------------------------

To help with the distribution between cells, it is best to download the *Distribution Matrix PDF*, accessible from the menu *Download* on the summary page of any closed order. The PDF file that you
will get first consists of a table of products and their quantities, then a large double table
entry, whose columns are the products, and the lines are the items, with at the intersection the number of units
of each product that the corresponding cell must receive.

If there are problems with the distribution, it may be useful to note it also in the comments of the
command.

Billing and billing
-----------------------

See the section :ref:`finance`.

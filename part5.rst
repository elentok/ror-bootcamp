======================
Part 5 - RSpec (TDD)
======================

`Back <index.html>`_

.. contents::

Demonstration
-------------

* How to run rspec

  * Add ``gem "rspec-rails"`` to the :test and :development groups

* `String Calcluator kata <http://www.21apps.com/agile/tdd-kata-by-example-video/>`_:

  * Add(string numbers)

    * "" => 0
    * "1" => 1
    * "1,2" => 3
    * "1,2,3....."
    * "1\\n,2,3"
    * "1,\\n" => raise ArgumentError
    * "1,2,-4" => raise ArgumentError(negatives are not allowed)

* Client and Order, when creating an order, it sets the associated client.

* `rspec demonstration code <https://github.com/elentok/ror-bootcamp/tree/gh-pages/exercises/rspec>`_.

Reading
-------

* `A Unit-testing framework in 44 lines <http://www.skorks.com/2011/02/a-unit-testing-framework-in-44-lines-of-ruby/>`_
* Reference - `RSpec documentation <https://www.relishapp.com/rspec>`_

Exercise 1
----------

* Implement `Conway's Game of Life <http://en.wikipedia.org/wiki/Conway's_Game_of_Life>`_ using TDD and rspec.

Exercise 2
----------

In this exercise, you will implement a simple shop, with a shopping cart, products and orders.

* Implement the following menu::

    1. Add product
    2. List all products
    3. Add to shopping cart
    4. Empty shopping cart
    5. Checkout
    0. Exit
  

  * The "Checkout" item:
   
    * asks the user for a credit card number
    * creates an order from the shopping cart
    * moves the line items to the new order
    * empties the cart in the session

* Notes:

  * Add these three ActiveRecord models to store the data:

    * Order (fields: credit_card)
    * Product (fields: name, price)
    * LineItem (fields: order_id, product_id, quantity)

  * Use these classes:

    * ShoppingCart

      * add(product/product_id, quantity)
      * empty!
      * empty?
      * checkout! (returns Order)

    * Store

      * menu

Exercise 3
----------

* Extend the previous exercise:
 
  * Modify the ``checkout!`` method:

    * After the order is created it should bill the credit card for the sum of the order
      by calling the ``Billing.bill(credit_card, sum)`` method

    * don't implement Billing, use a stub of it:

      .. code-block:: ruby

        Billing.should_receive(:bill).with(arg1, ...)


  * Add a ``sum`` method to the Order model
  


Screencasts
-----------

* Watch `Building RSpec from scratch <https://www.destroyallsoftware.com/screencasts/catalog/building-rspec-from-scratch>`_
* Watch `Growing a test suite <https://www.destroyallsoftware.com/screencasts/catalog/growing-a-test-suite>`_
* Watch `Stubbing unloaded dependencies <https://www.destroyallsoftware.com/screencasts/catalog/stubbing-unloaded-dependencies>`_
* Watch `Shorter class syntax <https://www.destroyallsoftware.com/screencasts/catalog/shorter-class-syntax>`_
* Watch `Three Test Shapes <https://www.destroyallsoftware.com/screencasts/catalog/three-test-shapes>`_
* Watch `When to generalize in TDD <https://www.destroyallsoftware.com/screencasts/catalog/three-test-shapes>`_


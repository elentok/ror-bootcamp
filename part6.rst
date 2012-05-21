======================
Ruby on Rails Bootcamp
======================

`Back <index.html>`_

Part 6 - Rails
==========================

.. contents::


Demonstration 1
-----------------

* Create a rails applications::

    rails new application-name -T

  (-T = skip Test::Unit testing framework, we're gonna use rspec instead)

* Add rspec and haml

  * add "rspec-rails" to Gemfile (in the :development and :test group)
  * add "haml-rails" to Gemfile (in the :development and :test group)
  * run ``bundle``
  * run ``rails generate rspec:install``

* Change default SASS/SCSS format to sass by adding this line to *config/environments/development.rb*
  
  .. code-block:: ruby

    config.sass.preferred_syntax = :sass

* Run development server::

    rails server

* Add a home controller with an index action::

    rails generate controller home index

* Make it the default action by deleting *public/index.html* 
  and adding this line to *config/routes.rb*:

  .. code-block:: ruby

   root to: 'home#index'

* Create a scaffold::

    rails generate scaffold ModelName field1:type1 field2:type2

* Layouts

* Watch the `Understanding the Asset Pipeline screencast <http://railscasts.com/episodes/279-understanding-the-asset-pipeline>`_.

Why is the rspec-rails gem in both :test and :development?
-----------------------------------------------------------

It's pretty obvious why the :test group is required (in order to run tests),

but why is the :development group required?

Well, it's because of the rails generators, when you run ``rails generate scaffold ModelName ...``:

  * if "rspec-rails" isn't in the :development group, rails will create Test::Unit tests.
  * if "rspec-rails" is in the :development, rails will create RSpec tests.

Exercise 6.1
-------------

* Read chapters 1-9 of `Action Controller Overview <http://guides.rubyonrails.org/action_controller_overview.html>`_
* Read `Layouts and Rendering <http://guides.rubyonrails.org/layouts_and_rendering.html>`_
* Read `Form Helpers <http://guides.rubyonrails.org/form_helpers.html>`_

* Start writing PizzaBurger for pizzas only (call the order class ``Order``):

  * Create a home controller with an index action/view with this menu:

    * Add a client
    * Show all clients
    * Order a pizza

      * the client should be a combobox selector

    * Show all orders
      
      * will show all of the orders with an option to edit and to cancel

  * Use haml and sass like in the demonstration
  * Use the ``rails generate scaffold`` command to create the ``Order`` and ``Client`` class

Demonstration 2
----------------

* Watch the `Simple Form screencast <http://railscasts.com/episodes/234-simple-form-revised>`_

  * Add ``gem "simple_form"`` to the Gemfile
  * Run ``bundle``
  * Run ``rails g simple_form:install --bootstrap``

* Twitter Bootstrap

  * Add ``gem "bootstrap-sass"`` to the Gemfile
  * Run ``bundle``
  * Add the following to the beginning of the ``application.css.sass`` file::

    @import "bootstrap"
    @import "bootstrap-responsive"

  * Delete everything from ``scaffolds.css.sass``

* The demo code is here: https://github.com/elentok/pizzaburger

Exercise 6.2 (Twitter Bootstrap + Simple Form)
-----------------------------------------------

* Go to `Twitter Bootstrap homepage <http://twitter.github.com/bootstrap/>`_ for reference.
* Go to `Simple Form homepage <https://github.com/plataformatec/simple_form>`_ for reference.
* Use SimpleForm and Bootstrap

Exercise 6.3 (Partial Templates)
---------------------------------

* Read `Using Partials <http://guides.rubyonrails.org/layouts_and_rendering.html#using-partials>`_
  (only chapter 3.4).

* When showing a client, also show all of his orders

  * Extract a partial template called "_list" from the order's "index" template.
  * Render the "_list" template from the client's "show" template.

Demonstration 3 (Localization)
-------------------------------

* Watch the `I18n screencast <http://railscasts.com/episodes/138-i18n-revised>`_.

Exercise 6.4 (Localize)
------------------------

* Make PizzaBurger support both hebrew and english

Demonstration 4
---------------

* Using one controller for multiple inheriting classes

Exercise 6.5 (Inheritance)
---------------------------

* Add burger orders:

  * Add the ``BurgerOrder`` and ``PizzaOrder`` classes that inherit 
    from ``Order`` (use single-table inheritance)
  * Add "Order a burger" to the menu
  * In the order controller's "new" action, decide which order to create by using a query parameter
  * In the order form view, decide which fields to show by checking the type of the object


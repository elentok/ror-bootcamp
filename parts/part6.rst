======================
Part 6 - Rails
======================

.. sectnum::
   :suffix: .

`Back <../index.html>`_

.. contents::

Introduction
-----------------

Demonstration
~~~~~~~~~~~~~

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
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

It's pretty obvious why the :test group is required (in order to run tests),

but why is the :development group required?

Well, it's because of the rails generators, when you run ``rails generate scaffold ModelName ...``:

  * if "rspec-rails" isn't in the :development group, rails will create Test::Unit tests.
  * if "rspec-rails" is in the :development, rails will create RSpec tests.

Exercise
~~~~~~~~

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

Twitter Bootstrap + Simple Form
-------------------------------

Demonstration
~~~~~~~~~~~~~

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

Exercise
~~~~~~~~

* Go to `Twitter Bootstrap homepage <http://twitter.github.com/bootstrap/>`_ for reference.
* Go to `Simple Form homepage <https://github.com/plataformatec/simple_form>`_ for reference.
* Use SimpleForm and Bootstrap

Partial Templates
-----------------

Exercise
~~~~~~~~

* Read `Using Partials <http://guides.rubyonrails.org/layouts_and_rendering.html#using-partials>`_
  (only chapter 3.4).

* When showing a client, also show all of his orders

  * Extract a partial template called "_list" from the order's "index" template.
  * Render the "_list" template from the client's "show" template.

Localization
------------

Demonstration
~~~~~~~~~~~~~

* Watch the `I18n screencast <http://railscasts.com/episodes/138-i18n-revised>`_.

Exercise
~~~~~~~~

* Read `Rails Internationalization API <http://guides.rubyonrails.org/i18n.html>`_.
* Make PizzaBurger support both hebrew and english.

RSpec + Spork + FactoryGirl
---------------------------

Demonstration
~~~~~~~~~~~~~

* Automatically generated spec files
* Add spork:

  * add the gem "spork" under :development and :test
  * run::

      bundle
      spork rspec --bootstrap

  * edit "spec_helper.rb" and put everything that comes after the 
    "---- Instructions ----" comment into the ``Spork.prefork`` block

  * add the following line into the ``Spork.each_run`` block::

      Dir.glob("#{::Rails.root}/app/models/*.rb").each { |file| load "#{file}" }

  * edit the ``.rspec`` file in the root of your projects and add "--drb"
  * run ``spork``

* Add factory girl:

  * add the gem "factory_girl_rails" under :development and :test
  * run ``bundle``
  * add the following line into the ``Spork.each_run`` block::

      FactoryGirl.factories.clear
      Dir.glob("#{::Rails.root}/spec/factories/*.rb").each { |file| load "#{file}" }

  * restart spork

* To create a new factory run::

    rails g factory_girl:model ModelName

* To run the specs, run ``rake spec``

* `more information about spork <https://github.com/sporkrb/spork>`_

Exercise
~~~~~~~~

* Read `Getting started with factory_girl <https://github.com/thoughtbot/factory_girl/blob/master/GETTING_STARTED.md>`_
* Make all the specs pass

Inheritance
-----------

Demonstration
~~~~~~~~~~~~~

* Using one controller for multiple inheriting classes

Exercise
~~~~~~~~

* Add burger orders:

  * Add the ``BurgerOrder`` and ``PizzaOrder`` classes that inherit 
    from ``Order`` (use single-table inheritance)
  * Add "Order a burger" to the menu
  * In the order controller's "new" action, decide which order to create by using a query parameter
  * In the order form view, decide which fields to show by checking the type of the object

Coffeescript & AJAX
-------------------

Exercise
~~~~~~~~

* In the order form, add a button near the client selector that will allow you to
  add a new client without leaving the form:

  * Use `Twitter Bootstrap's Modal JS plugin <http://twitter.github.com/bootstrap/javascript.html#modals>`_
    to open the new client popup.
  * Use `$.ajax <http://api.jquery.com/jQuery.ajax/>`_ to save the new client to the server
    (send a POST request to the ``/clients`` path).
  * Write your coffeescript code in ``app/assets/javascripts/orders.js.coffee``
    (you can put the code for the new client form in ``clients.js.coffee`` if you want).

Authentication
--------------

Demonstration
~~~~~~~~~~~~~

* Watch `Authentication from scratch <http://railscasts.com/episodes/250-authentication-from-scratch-revised>`_

Exercise
~~~~~~~~

* Add users (login+signup and everything) to PizzaBurger

Devise (authentication gem)
---------------------------

Demonstration
~~~~~~~~~~~~~

* Watch `Introducing Devise <http://railscasts.com/episodes/209-introducing-devise>`_
* Watch `Customizing Devise <http://railscasts.com/episodes/210-customizing-devise>`_

* Create two types of users:

  * Client - use the existing class (either combine Client and User).
  * Employee

CanCan
-------------------------

Demonstration
~~~~~~~~~~~~~

* Watch `Authorization with CanCan <http://railscasts.com/episodes/192-authorization-with-cancan>`_

Exercise
~~~~~~~~

* Implement the following roles:

  * Client

    * Can create orders and edit its own orders

  * Employee - allowed to view all orders and add clients

    * Can do anything


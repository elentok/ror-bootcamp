======================
Ruby on Rails Bootcamp
======================

`Back <index.html>`_

Part 6 - Rails
==========================

.. contents::


Demonstration #1
-----------------

* Create a rails applications::

    rails new -T

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

Exercise 6.1
-------------

* Read chapters 1-9 of `Action Controller Overview <http://guides.rubyonrails.org/action_controller_overview.html>`_
* Read `Layouts and Rendering <http://guides.rubyonrails.org/layouts_and_rendering.html>`_

* Rewrite PizzaBurger as a web application




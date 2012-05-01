======================
Ruby on Rails Bootcamp
======================

This document is targeted at programmers that don't know a thing about Ruby on Rails 
and want to learn.

The purpose of this document is to guide people who want to learn RoR through the process.

.. contents::

Schedule
=========

+----------+-----------------+----------------+-----------------+-------------------+------------------+
| Week/Day |      Sunday     |     Monday     |     Tuesday     |     Wednesday     |     Thursday     |
+==========+=================+================+=================+===================+==================+
| Week #1  | * Intro Lecture                                                                           |
|          | * Part 1 (Ruby)                                                                           |
+----------+-----------------+----------------+-----------------+-------------------+------------------+
| Week #2  | * Part 2 (Gems) |                                                                         |
|          |                 |                                                                         |
+----------+-----------------+----------------+-----------------+-------------------+------------------+

Introduction
============

* What is Ruby? 

  * Ruby is a dynamic, interpreted, open source language.

* What is Rails?

  * Rails is a web application framework

* Versions

  * The newest version of Ruby is 1.9, the old version is 1.8 
    (1.9 is not fully backward-compatible with 1.8 so not everyone switched from 1.8).
  * The newest version of Rails is 3.2, the old version is 2.x
    (3.2 is not fully backward-compatible with 2.x so not everyone switched from 2.x).

* Gems

  * Packaged modules of ruby code (sort of like C# DLLs but also include the code)

* Installing Ruby On Rails

  * Windows - `RailsInstaller <http://railsinstaller.org/>`_
  * Linux/Mac - Rvm
    Ruby Version Manager - allows running multiple versions of Ruby on the same machine
    (so people can run legacy Ruby 1.8 web apps and new 1.9 web apps side-by-side).

* Development Environment, you can use whatever you want:

  * Vim
  * Sublime Text => recommended for beginners
  * RubyMine
  * NotePad++

Part 1 - The Ruby Language
==========================

* Read the Ruby Language QuickStart: 
  `Part 1 <http://www.ruby-lang.org/en/documentation/quickstart>`_, 
  `Part 2 <http://www.ruby-lang.org/en/documentation/quickstart/2>`_, 
  `Part 3 <http://www.ruby-lang.org/en/documentation/quickstart/3>`_ and
  `Part 4 <http://www.ruby-lang.org/en/documentation/quickstart/4>`_.

Exercise #1.1
-------------

* Create the `PizzaBurger` application that will show this menu::

    Welcome to PizzaBurger,
    What would you like to do?

    1. Order a pizza
    2. Order a burger
    3. List all orders
    4. Cancel and order
    0. Exit

* Pressing **1** will ask the user::

    Ordering a pizza!

    Your name: Bob
    Your phone number: 054-1234567
    Which toppings: onions and pepperoni
    How many pizzas: 3

* Pressing **2** will ask the user::

    Ordering a burger!

    Your name: Joe
    Your phone number: 054-7654321
    How would you like your burger: medium-rare
    Would you like fries: yes
      
* Pressing **3** will show::
        
    The current orders are:
    
      1) 3 pizzas with onions and pepperoni
         Bob, 054-1234567

      2) Burger with fries (medium-rare)
         Joe, 054-7654321

* Pressing **4** will ask the user::
        
    Which order would you like to cancel? 1

    Order details:

      1) 3 pizzas with onions and pepperoni
         Bob, 054-1234567

    Are you sure? yes

    The order has been cancelled.
      
* Pressing **0** will display "Thank you for using PizzaBurger" and exit.

**Notes:**

* Create the following classes:

  * ``PizzaBurger``

    * has a method named ``menu`` which shows the menu.
    * has an instance (member) variable named ``orders`` which will contain all of the orders.

  * ``PizzaOrder`` - contains the parameters for a pizza order.
  * ``BurgerOrder`` - contains the parameters for a pizza order.

* Do not concatenate strings (``"123" + x``), use ``"123#{x}"``.
* Override the ``to_s`` method for ``PizzaOrder`` and ``BurderOrder`` to display the details
* Validate all of the user input, if invalid show error messages and ask to enter again.

Exercise #1.2
-------------

* Read `Jamming with Ruby YAML <http://juixe.com/techknow/index.php/2009/10/08/jamming-with-ruby-yaml/>`_ and
  `YAML Tutorial <http://rhnh.net/2006/06/25/yaml-tutorial>`_.

* Enhance exercise #1.1 to store (and load) the orders to a yaml file.

Exercise #1.3
-------------

* Read `How to create and use Hashes in Ruby <http://ruby.about.com/od/rubyfeatures/a/hashes.htm>`_.

* Modify exercise #1.2:
 
  * store the orders using a hash instead of an array (the key should be the phone number of person that ordered).
  * add an option to search for orders by the phone number of the person who ordered.


Part 2 - Ruby Gems
===================

* A gem is a ruby plugin
* To install a single gem::

    gem install gem-name-here

* A single project uses multiple gems and in order to manage gem dependencies
  and simplify deployment of a rails app we use a tool called *Bundler*.

* Bundler uses a file called *Gemfile*:

  .. code-block:: ruby

      # this line tells bundler to use "http://rubygems.org" as the gem repository
      # (if you wish to use an offline repository, replace this url with your own)
      source 'http://rubygems.org'

      # this tells bundler to load the "rails" gem and all of its dependencies
      gem 'rails'

      # these gems will only be required for development 
      # (when deploying a production environment these won't be loaded)
      group :development do
        gem 'debugger'
        gem 'guard-livereload'
      end

* After creating the Gemfile, run the command ``bundle install`` to install the gems.

* Watch the `bundler screencast <http://railscasts.com/episodes/201-bundler-revised>`_.

Exercise 2
----------

* Create a new folder
* Create a file called "Gemfile" and the following gems to it:

  * rails
  * rspec-rails
  * debugger

* Run ``bundle install``, you should see "Your bundle is complete! ..."

**Notes:**

* If it complains that there is no source, then add the source line (``source 'url-for-gem-server'``)
  at the beginning of the file.

* You can run a local gem server by running ``gem server`` in a terminal (the url for this server will be *http://localhost:8808*).

Part 3 - Debugging
==================

* Watch the `Debugging ruby screencast <http://railscasts.com/episodes/54-debugging-ruby-revised>`_.


Part 4 - Active Record
======================

Exercise 4
----------

* Modify PizzaBurger to store the orders to an SQLite database using ActiveRecord.

Part 5 - RSpec (TDD)
====================

Exercise 5
----------

* Write tests for PizzaBurger


Part 6 - Rails
==============

* Read the "Agile Web Developement with Rails" book.

Exercise 6
----------

* Rewrite PizzaBurger as a web application

Mess
==============

Todo
-------

* Debugging
* Deployment
* Stuff in Ruby that confuses new programmers:

  * blocks
  * => vs :


Online tutorials
-------------------
1. first go over the exercises in TryRuby: http://tryruby.org/
2. sign up (for free) in http://railsforzombies.org/ (it's a hands-on online course)

Screencasts
-----------
* http://railscasts.com/episodes/279-understanding-the-asset-pipeline
* http://railscasts.com/episodes/318-upgrading-to-rails-3-2
* http://railscasts.com/episodes/285-spork
* http://railscasts.com/episodes/324-passing-data-to-javascript
* http://railscasts.com/episodes/334-compass-css-sprites

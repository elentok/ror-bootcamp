======================
Ruby on Rails Bootcamp
======================

.. sectnum::
   :suffix: .
   :depth: 2

This document is targeted at programmers that don't know a thing about Ruby on Rails 
and want to learn.

The purpose of this document is to guide people who want to learn RoR through the process.

.. contents::

Schedule
=========

+----------+----------------------+----------------+----------------------+-------------------+------------------+
| Week/Day |      Sunday          |     Monday     |     Tuesday          |     Wednesday     |     Thursday     |
+==========+======================+================+======================+===================+==================+
| Week #1  | * Intro Lecture                       | * Part 2 (Gems)      | Part 4 (Active Record)               |
|          | * Part 1 (Ruby)                       | * Part 3 (Debugging) |                                      |
+----------+----------------------+----------------+----------------------+-------------------+------------------+
| Week #2  | More ActiveRecord                                                                                   |
|          |                                                                                                     |
+----------+----------------------+----------------+----------------------+-------------------+------------------+
| Week #3  | Part 5 (Rspec)                                                                                      |
|          |                                                                                                     |
+----------+----------------------+----------------+----------------------+-------------------+------------------+
| Week #4  | Part 6 (Rails)                                                                                      |
|          |                                                                                                     |
+----------+----------------------+----------------+----------------------+-------------------+------------------+
| Week #5  | Exercise 6.2                                                                                        |
|          |                                                                                                     |
+----------+----------------------+----------------+----------------------+-------------------+------------------+
| Week #6  | Exercise 6.3                                                                                        |
|          |                                                                                                     |
+----------+----------------------+----------------+----------------------+-------------------+------------------+
| Week #7  | Exercise 6.4                                                                                        |
|          |                                                                                                     |
+----------+----------------------+----------------+----------------------+-------------------+------------------+
| Week #8  | Exercise 6.5                                                                                        |
|          |                                                                                                     |
+----------+----------------------+----------------+----------------------+-------------------+------------------+

Introduction
============

* Watch the `introduction lecture <intro.html>`_.

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

Course
======

The Ruby Language
-----------------

Demonstration #1
~~~~~~~~~~~~~~~~

* Interpreter (IRB and Pry)
* How to create and run a ruby script
* String helper methods
* `Symbols <http://www.troubleshooters.com/codecorn/ruby/symbols.htm>`_ - performance,
  comparing symbols is faster than comparing strings.
* Classes

  * Instance Variables
  * Instance Methods
  * Class Methods
  * attr_accessor
  * attr_reader/writer
  * extend integer

    .. code-block:: ruby

        class Integer
          def square
            self * self
          end
        end

* Arrays
* Loops (each/for/loop/range)

Reading Material
~~~~~~~~~~~~~~~~
* Read the Ruby Language QuickStart: 
  `Part 1 <http://www.ruby-lang.org/en/documentation/quickstart>`_, 
  `Part 2 <http://www.ruby-lang.org/en/documentation/quickstart/2>`_, 
  `Part 3 <http://www.ruby-lang.org/en/documentation/quickstart/3>`_ and
  `Part 4 <http://www.ruby-lang.org/en/documentation/quickstart/4>`_.

Exercise 1.1
~~~~~~~~~~~~~

* Create the `PizzaBurger` application that will show this menu::

    Welcome to PizzaBurger,
    What would you like to do?

    1. Order a pizza
    2. Order a burger
    3. List all orders
    4. Cancel an order
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

Exercise 1.2
~~~~~~~~~~~~~

* Read `Jamming with Ruby YAML <http://juixe.com/techknow/index.php/2009/10/08/jamming-with-ruby-yaml/>`_ and
  `YAML Tutorial <http://rhnh.net/2011/01/31/yaml-tutorial>`_

* Enhance exercise #1.1 to store (and load) the orders to a yaml file.

Exercise 1.3
~~~~~~~~~~~~~

* Read `How to create and use Hashes in Ruby <http://ruby.about.com/od/rubyfeatures/a/hashes.htm>`_.
 
* add the following option to the menu::

      5. List all clients

* add a new class: ``Client`` with three attributes:
  
  * name
  * phone
  * address

* when ordering a pizza or a burger, ask for the phone number first

  * if it doesn't exist, ask for the client's name and address
  * if it does exist, say "Welcome back {client's name}"

* store only the phone number in the orders
* store the clients in a hash inside the PizzaBurger class

Demonstration #2
~~~~~~~~~~~~~~~~

* method argument starting with "*"
* Arrays/Hashes: min/max/group_by
* Singleton Pattern
* Modules and Classes
* Include and Extend
* missing_method
* Show `How and why to avoid nil <https://www.destroyallsoftware.com/screencasts/catalog/how-and-why-to-avoid-nil>`_

Exercise 1.4
~~~~~~~~~~~~~

* Read `Ruby Singleton Pattern <http://dalibornasevic.com/posts/9-ruby-singleton-pattern-again>`_ (by Dalibor Nasevic)
* Read `Include vs Extend <http://railstips.org/blog/archives/2009/05/15/include-vs-extend-in-ruby/>`_ (by John Nunemaker)
* Convert PizzaBurger to a singleton using the Ruby Singleton module technique

Exercise 1.5
~~~~~~~~~~~~~

* Convert PizzaBurger to a singleton using the Module technique (as seen in the "Ruby Singleton Pattern" article)

Exercise 1.6
~~~~~~~~~~~~~

* Change PizzaOrder and BurgerOrder from standard inheritance to module-based composition
  (convert Order to a module)

Exercise 1.7
~~~~~~~~~~~~~

* Read about `missing_method <http://www.sitepoint.com/lets-get-meta-missing-method/>`_ (by Myles Eftos)
* Move the save/load to yaml code to a class named ``PizzaBurgerData``
  with two methods: 

  * ``initialize`` - loads from yaml (if it exists)
  * ``save`` - saves to yaml

* Use ``missing_method`` to allow accessing values in the hash directly

  .. code-block:: ruby
    
      data = PizzaBurgerData.new
      data.orders # will return @hash[:orders]


Exercise 1.8
~~~~~~~~~~~~~~~~~~~

* Read `Declaratively Adding Methods to a Class <http://www.vitarara.org/cms/ruby_metaprogamming_declaratively_adding_methods_to_a_class>`_ (by Mark Menard)
* Read `attr_accessor meta programming <http://ghouston.blogspot.com/2006/05/attraccessor-meta-programming.html>`_ (by Greg Houston)
* Implement your own version attr_accessor
* Implement your own version class_attr_accessor
  (same as attr_accessor but creates a static property)

Extra Reading
~~~~~~~~~~~~~

* `Github Ruby Styleguide <https://github.com/styleguide/ruby>`_
* `Advanced Ruby Arrays <http://www.techotopia.com/index.php/Advanced_Ruby_Arrays>`_
* `Understanding map and reduce <http://railspikes.com/2008/8/11/understanding-map-and-reduce>`_ (by Jon Dahl)
* `A Wealth of Ruby loops and Iterators <http://www.skorks.com/2009/09/a-wealth-of-ruby-loops-and-iterators/>`_ (by Alan Skorkin).
* `Ruby Procs and Lambdas <http://www.skorks.com/2010/05/ruby-procs-and-lambdas-and-the-difference-between-them/>`_ (by Alan Skorkin).

Ruby Gems
------------------

Demonstration
~~~~~~~~~~~~~

* difference between ``require``, ``require_relative`` and ``load``:

  * ``require 'name'`` - relative to $LOAD_PATH
  * ``require './...'`` - relative to the curent working path
  * ``require_relative '...'`` - relative to the path of the current file
  * ``load '...'`` - loads a file (even if it's already loaded)

* install a gem
* create a Gemfile
* run bundle install
* use Gemfile groups
* watch the `bundler screencast <http://railscasts.com/episodes/201-bundler-revised>`_.

Read
~~~~

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

Exercise 2
~~~~~~~~~~

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

Debugging
------------------

Demonstration
~~~~~~~~~~~~~

* debug a simple script
  
  * run via rdebug
  * add breakpoint ('debugger')
  * run via simple script (require 'debugger')
  * help
  * autolist
  * autoeval

* use irb within the debugger
* use pry within the debugger

Exercise 3
~~~~~~~~~~

* Read `Ruby debug in 30 seconds <http://pivotallabs.com/users/chad/blog/articles/366-ruby-debug-in-30-seconds-we-don-t-need-no-stinkin-gui->`_
  (skip "Install the latest gem" and "Install the cheatsheet"
* References:

  * `Pry Wiki <https://github.com/pry/pry/wiki/>`_.

* Debug the PizzaBurger application.

  * run it in debug mode 
  * run it normal mode (with breakpoints)


Active Record
----------------------

Demonstration
~~~~~~~~~~~~~

* Database generation script
  
  * Connect to database
  * Create a migration
  * Run migrations

* Connect to database

  * create a model
  * add item
  * remove item

* Basic validations
* Associations:

  * has_one / belongs_to
  * has_many
  * has_many, :dependent => :destroy

* Important notes:

  * If you want to modify/create a table and then modify/create objects
    you must run ``{Model}.reset_column_information``
    (from `stack overflow <http://stackoverflow.com/questions/8935350/rails-3-1-cant-write-to-column-in-same-migration-that-adds-it>`_).

  * don't use attr_accessor for model attributes (it will override active record's default implementation).

  * beware of *mass assignment*: (quote from comment by steve3210)

      This isn't actually a hole in rails..  If you use mass assignment, you need to protect attributes you don't want assigned with attr_protected on your model.

      If you don't want people to do this:

      .. code-block:: ruby

          @user.update_attributes({ :favorite_color => 'blue', 
                                    :password => 'hacked'})

      You need to do this:

      .. code-block:: ruby

          class User < ActiveRecord::Base
            attr_protected :password
          end

* `ActiveRecord demonstration code <https://github.com/elentok/ror-bootcamp/tree/gh-pages/exercises/active_record>`_.

Exercise 4.1
~~~~~~~~~~~~

* Create a file called ~/.pryrc and put these lines in the file:

  .. code-block:: ruby

      require 'logger'
      require 'active_record'
      ActiveRecord::Base.logger = Logger.new(STDOUT)

  This will show you the SQL code of every query.

* Read chapters 1-2 of `Association Basics <http://guides.rubyonrails.org/association_basics.html>`_

* Modify PizzaBurger to store the orders to an SQLite database using ActiveRecord.
  
Demonstration 2
~~~~~~~~~~~~~~~

* custom validations (using :validate)
* callbacks (before_save, before_validation)
* Setting a variable during the before_validation callback: 
  Use ``self`` when accessing the attribute.
  (see `trying to set a variable in before_validation but it isn't working <http://stackoverflow.com/questions/6065860/trying-to-set-a-variable-in-before-validation-but-it-isnt-working>`_).

Exercise 4.2
~~~~~~~~~~~~

* Read chapters 1-4 of `Validations <http://guides.rubyonrails.org/active_record_validations_callbacks.html>`_

* Add validations to the PizzaBurger models

Extra Reading
~~~~~~~~~~~~~

* Read the rest of `Validations <http://guides.rubyonrails.org/active_record_validations_callbacks.html>`_

Demonstration 3
~~~~~~~~~~~~~~~

* Single Table Inheritance
* Multi-Table (sort-of)Inheritance

  * Using composition
  * Using polymorphic associations

Exercise 4.3
~~~~~~~~~~~~

* Read the rest of `Association Basics <http://guides.rubyonrails.org/association_basics.html>`_

* Use single table inheritance to implement ``PizzaOrder`` and ``BurgerOrder``.

Exercise 4.4
~~~~~~~~~~~~

* Now use polymorphic associations

Screencasts
~~~~~~~~~~~

* Watch `What goes in Active Records <https://www.destroyallsoftware.com/screencasts/catalog/what-goes-in-active-records>`_
* Watch `What goes in Active Records Part 2 <https://www.destroyallsoftware.com/screencasts/catalog/what-goes-in-active-records-part-2>`_

Part 5 - RSpec (TDD)
--------------------

Demonstration
~~~~~~~~~~~~~

* How to run rspec

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
~~~~~~~

* `A Unit-testing framework in 44 lines <http://www.skorks.com/2011/02/a-unit-testing-framework-in-44-lines-of-ruby/>`_
* Reference - `RSpec documentation <https://www.relishapp.com/rspec>`_

Exercise 5.1
~~~~~~~~~~~~

* Implement `Conway's Game of Life <http://en.wikipedia.org/wiki/Conway's_Game_of_Life>`_ using TDD and rspec.

Exercise 5.2
~~~~~~~~~~~~

In this exercise, you will implement a simple shop, with a shopping cart, products and orders.

* Add these three ActiveRecord models to store the data:

  * Order (fields: credit_card)
  * Product (fields: name, price)
  * LineItem (fields: order_id, product_id, quantity)

* Implement the following menu::

    1. Add product
    2. List all products
    3. Add to shopping cart
    4. Empty shopping cart
    5. Checkout
    0. Exit
  

  * The "Checkout" item will:
   
    * ask the user for a credit card number
    * creates an order from the shopping cart
    * moves the line items to the new order
    * empties the cart in the session


Screencasts
~~~~~~~~~~~

* Watch `Building RSpec from scratch <https://www.destroyallsoftware.com/screencasts/catalog/building-rspec-from-scratch>`_
* Watch `Growing a test suite <https://www.destroyallsoftware.com/screencasts/catalog/growing-a-test-suite>`_
* Watch `Stubbing unloaded dependencies <https://www.destroyallsoftware.com/screencasts/catalog/stubbing-unloaded-dependencies>`_
* Watch `Shorter class syntax <https://www.destroyallsoftware.com/screencasts/catalog/shorter-class-syntax>`_
* Watch `Three Test Shapes <https://www.destroyallsoftware.com/screencasts/catalog/three-test-shapes>`_
* Watch `When to generalize in TDD <https://www.destroyallsoftware.com/screencasts/catalog/three-test-shapes>`_

Part 6 - Rails
--------------

* Read the "Agile Web Developement with Rails" book and do the exercises.
* Watch the `Understanding the Asset Pipeline screencast <http://railscasts.com/episodes/279-understanding-the-asset-pipeline>`_.

Exercise 6
~~~~~~~~~~

* Rewrite PizzaBurger as a web application

Appendixes
=======================

Important differences between Unix and Windows
-----------------------------------------------

Drives and Directory tree
~~~~~~~~~~~~~~~~~~~~~~~~~
There is notion of drive C:, D:, etc. 
The directory tree has a single root, and it looks like this:

  * ``/bin`` - basic shell commands (ls, mv, cp, mkdir, ...)
  * ``/sbin`` - hardcore system binaries (file system stuff, low-level hardware management, ...)
  * ``/lib`` - low-level libraries (kernel modules, ...)
  * ``/dev`` - ??? (how to explain...)
  * ``/proc`` - ??? (how to explain...)
  * ``/var`` - cache, logs, etc...
  * ``/tmp`` - temporary files
  * ``/usr`` - application-level
    
    * ``/usr/bin`` - application binaries
    * ``/usr/lib`` - application libraries
    * ``/usr/share`` - application resources

      * ``/usr/share/doc`` - application documentation
    
  * ``/home`` - contains the home directories of each user:
    
    * when logged in as the user "bob", the environment variable $HOME will usually be "/home/bob"
    * the home directory can be referenced using the tilda (~) symbol, so running::
     
          cd ~/projects/myproject

      will change the current directory to */home/bob/projects/myproject*

File system permissions
~~~~~~~~~~~~~~~~~~~~~~~
  
  * each file is owned by a user
  * each file belongs to a group
  * there are 3 types of permissions:
    
    * read (r)
    * write (w)
    * execute (x)

      * when a file is set as executable you can run it by typing ``./filename`` in the terminal
      * when a directory is set as executable you can open it and see its contents

  * these three permissions are defined for these three entities:

    * owner - the user that owns this file
    * group - the group this file belongs to
    * other - all other users

  * you can see the permissions of a file by running ``ls -l``
  * if I run ``ls -l`` on this document's directory I will get the following::

      drwxrwxr-x 2 david david  4096 Apr 29 16:07 exercises
      -rw-rw-r-- 1 david david   720 Apr 30 09:24 Guardfile
      -rw-rw-r-- 1 david david 18493 May  2 09:48 index.html
      -rw-rw-r-- 1 david david 10212 May  2 09:48 index.rst
      -rw-rw-r-- 1 david david   259 Apr 30 09:19 README
      -rwxrwxr-x 1 david david  2089 Apr 30 09:16 rst2html-pygments.py
      drwxrwxr-x 2 david david  4096 May  1 16:53 style

    these are the permissions on the "index.rst" file are "-rw-rw-r--":

    * the owner (david) can read and write it
    * the group (david) can read and write it (yes, the group is also called "david", 
      when installing Ubuntu it automatically creates a user and a group by the same name).
    * other users can only read it

  * sometimes you might see permissions written using 3 digits, like 754:

    * each digit is actually the sum of the following:

      * executable = 1
      * writeable = 2
      * readable = 4

    * the 1st digit is the user permissions
    * the 2st digit is the group permissions
    * the 3st digit is the permissions for all other users

    * so 754 means:
      
      * read/write/execute-able by the user (7=1+2+4)
      * read/execute-able by the group (5=1+4)
      * readable by other users (4)

Misc
~~~~~~~

1. file names are case sensitive, so a directory can contain two files named "Bob" and "bob".

Important Linux commands
-------------------------

* To see help for a command just run "``name-of-command --help``"
* ``ls`` - shows a list of the files in the current directory
* ``cd /path/to/other/directory`` - changes the current directory
* ``pwd`` - shows the current directory
* ``chmod`` - changes the permissions on a file, examples:

  * ``chmod u=rwx myfile`` - make myfile read/write/execute-able by the owning user
  * ``chmod g=rx myfile`` - make myfile read/execute-able by the group
  * ``chmod o=r myfile`` - make myfile readable by all other users
  * ``chmod -R u=rwx mydir`` - make mydir and all of its contents (files and directories) 
    read/write/execute-able by the owning user.

* ``rm file`` - delete a file

  * ``rm -R dir`` - delete a directory and all of its contents

* ``mv source-file target-file`` - moves (or renames) a file
* ``mv source-file target-directory/`` - moves the files into *target-directory*
* ``cp source-file target-file`` - copy a file

Extra References
-----------------------------

Online tutorials
~~~~~~~~~~~~~~~~~~~
1. TryRuby: http://tryruby.org/
2. http://railsforzombies.org/ (it's a hands-on online course)

Screencasts
~~~~~~~~~~~
* http://railscasts.com/episodes/318-upgrading-to-rails-3-2
* http://railscasts.com/episodes/285-spork
* http://railscasts.com/episodes/324-passing-data-to-javascript
* http://railscasts.com/episodes/334-compass-css-sprites
* `Debugging ruby screencast <http://railscasts.com/episodes/54-debugging-ruby-revised>`_.


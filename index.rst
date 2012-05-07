======================
Ruby on Rails Bootcamp
======================

.. sectnum::
   :suffix: .

This document is targeted at programmers that don't know a thing about Ruby on Rails 
and want to learn.

The purpose of this document is to guide people who want to learn RoR through the process.

.. contents::

Schedule
=========

+----------+----------------------+----------------+-----------------+-------------------+------------------+
| Week/Day |      Sunday          |     Monday     |     Tuesday     |     Wednesday     |     Thursday     |
+==========+======================+================+=================+===================+==================+
| Week #1  | * Intro Lecture                                                                                |
|          | * Part 1 (Ruby)                                                                                |
+----------+----------------------+----------------+-----------------+-------------------+------------------+
| Week #2  | * Part 2 (Gems)      | Part 4 (Active Record)                                                  |
|          | * Part 3 (Debugging) |                                                                         |
+----------+----------------------+----------------+-----------------+-------------------+------------------+
| Week #3  | Part 5 (RSpec)                                                                                 |
|          |                                                                                                |
+----------+----------------------+----------------+-----------------+-------------------+------------------+
| Week #4  | Part 6 (Rails) - Read the "Agile Web Development with Rails" book and do the exercises.        |
|          |                                                                                                |
+----------+----------------------+----------------+-----------------+-------------------+------------------+
| Week #6  | Exercise 6.1                                                                                   |
|          |                                                                                                |
+----------+----------------------+----------------+-----------------+-------------------+------------------+
| Week #7  | Exercise 6.2                                                                                   |
|          |                                                                                                |
+----------+----------------------+----------------+-----------------+-------------------+------------------+
| Week #8  | Exercise 6.3                                                                                   |
|          |                                                                                                |
+----------+----------------------+----------------+-----------------+-------------------+------------------+

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

Exercise #1.1
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

Exercise #1.2
~~~~~~~~~~~~~

* Read `Jamming with Ruby YAML <http://juixe.com/techknow/index.php/2009/10/08/jamming-with-ruby-yaml/>`_ and
  `YAML Tutorial <http://rhnh.net/2006/06/25/yaml-tutorial>`_.

* Enhance exercise #1.1 to store (and load) the orders to a yaml file.

Exercise #1.3
~~~~~~~~~~~~~

* Read `How to create and use Hashes in Ruby <http://ruby.about.com/od/rubyfeatures/a/hashes.htm>`_.
 
* add the following option to the menu::

      5. List all clients

* add a new class: ``Client`` with three attributes:
  
  * name
  * phone
  * address

* when ordering a pizza or a burger, ask for the phone number first

  * if it doesn't exist, ask for the client's phone and address
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

Exercise #1.4
~~~~~~~~~~~~~

* Read `Ruby Singleton Pattern <http://dalibornasevic.com/posts/9-ruby-singleton-pattern-again>`_
* Convert PizzaBurger to a singleton using the Module technique

Exercise #1.5
~~~~~~~~~~~~~

* Read `Include vs Extend <http://railstips.org/blog/archives/2009/05/15/include-vs-extend-in-ruby/>`_
* Convert PizzaBurger to a singleton using the Ruby Singleton module technique

Exercise #1.6
~~~~~~~~~~~~~

* Change PizzaOrder and BurgerOrder from standard inheritance to module-based composition
  (convert Order to a module)

Exercise #1.7
~~~~~~~~~~~~~

* Read `Declaratively Adding Methods to a Class <http://www.vitarara.org/cms/ruby_metaprogamming_declaratively_adding_methods_to_a_class>`_
* Read about `missing_method <http://www.sitepoint.com/lets-get-meta-missing-method/>`_
* Move the save/load to yaml code to a class named ``PizzaBurgerData``
  with two methods: 

  * ``initialize`` - loads from yaml (if it exists)
  * ``save`` - saves to yaml

* Use ``missing_method`` to allow accessing values in the hash directly

  .. code-block:: ruby
    
      data = PizzaBurgerData.new
      data.orders # will return @hash[:orders]


Exercise #1.8
~~~~~~~~~~~~~~~~~~~

* Read `attr_accessor meta programming <http://ghouston.blogspot.com/2006/05/attraccessor-meta-programming.html>`_
* Implement your own version attr_accessor
* Implement your own version class_attr_accessor
  (same as attr_accessor but creates a static property)

Ruby Gems
------------------

Demonstration
~~~~~~~~~~~~~

* install a gem
* create a Gemfile
* run bundle install
* use Gemfile groups

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

* Watch the `bundler screencast <http://railscasts.com/episodes/201-bundler-revised>`_.

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

* Watch the `Debugging ruby screencast <http://railscasts.com/episodes/54-debugging-ruby-revised>`_.


Active Record
----------------------

Exercise 4
~~~~~~~~~~

* Modify PizzaBurger to store the orders to an SQLite database using ActiveRecord.

Part 5 - RSpec (TDD)
--------------------

Exercise 5
~~~~~~~~~~

* Write tests for PizzaBurger


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


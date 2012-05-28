===========================
Part 1 - The Ruby Language
===========================

`Back <index.html>`_

.. contents::

Demonstration #1
=================

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
================

* Read the Ruby Language QuickStart: 
  `Part 1 <http://www.ruby-lang.org/en/documentation/quickstart>`_, 
  `Part 2 <http://www.ruby-lang.org/en/documentation/quickstart/2>`_, 
  `Part 3 <http://www.ruby-lang.org/en/documentation/quickstart/3>`_ and
  `Part 4 <http://www.ruby-lang.org/en/documentation/quickstart/4>`_.

Exercise 1.1
================

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
================

* Read `Jamming with Ruby YAML <http://juixe.com/techknow/index.php/2009/10/08/jamming-with-ruby-yaml/>`_ and
  `YAML Tutorial <http://rhnh.net/2011/01/31/yaml-tutorial>`_

* Enhance exercise #1.1 to store (and load) the orders to a yaml file.

Exercise 1.3
================

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
=================

* method argument starting with "*"
* Arrays/Hashes: min/max/group_by
* Singleton Pattern
* Modules and Classes
* Include and Extend
* missing_method
* Show `How and why to avoid nil <https://www.destroyallsoftware.com/screencasts/catalog/how-and-why-to-avoid-nil>`_

Exercise 1.4
================

* Read `Ruby Singleton Pattern <http://dalibornasevic.com/posts/9-ruby-singleton-pattern-again>`_ (by Dalibor Nasevic)
* Read `Include vs Extend <http://railstips.org/blog/archives/2009/05/15/include-vs-extend-in-ruby/>`_ (by John Nunemaker)
* Convert PizzaBurger to a singleton using the Ruby Singleton module technique

Exercise 1.5
================

* Convert PizzaBurger to a singleton using the Module technique (as seen in the "Ruby Singleton Pattern" article)

Exercise 1.6
================

* Change PizzaOrder and BurgerOrder from standard inheritance to module-based composition
  (convert Order to a module)

Exercise 1.7
================

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
================

* Read `Declaratively Adding Methods to a Class <http://www.vitarara.org/cms/ruby_metaprogamming_declaratively_adding_methods_to_a_class>`_ (by Mark Menard)
* Read `attr_accessor meta programming <http://ghouston.blogspot.com/2006/05/attraccessor-meta-programming.html>`_ (by Greg Houston)
* Implement your own version attr_accessor
* Implement your own version class_attr_accessor
  (same as attr_accessor but creates a static property)

Extra Reading
================

* `Github Ruby Styleguide <https://github.com/styleguide/ruby>`_
* `Advanced Ruby Arrays <http://www.techotopia.com/index.php/Advanced_Ruby_Arrays>`_
* `Understanding map and reduce <http://railspikes.com/2008/8/11/understanding-map-and-reduce>`_ (by Jon Dahl)
* `A Wealth of Ruby loops and Iterators <http://www.skorks.com/2009/09/a-wealth-of-ruby-loops-and-iterators/>`_ (by Alan Skorkin).
* `Ruby Procs and Lambdas <http://www.skorks.com/2010/05/ruby-procs-and-lambdas-and-the-difference-between-them/>`_ (by Alan Skorkin).


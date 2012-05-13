======================
Ruby on Rails Bootcamp
======================

`Back <index.html>`_

Part 4 - Active Record
==========================

.. contents::

Demonstration
--------------------

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
--------------------

* Create a file called ~/.pryrc and put these lines in the file:

  .. code-block:: ruby

      require 'logger'
      require 'active_record'
      ActiveRecord::Base.logger = Logger.new(STDOUT)

  This will show you the SQL code of every query.

* Read chapters 1-2 of `Association Basics <http://guides.rubyonrails.org/association_basics.html>`_

* Modify PizzaBurger to store the orders to an SQLite database using ActiveRecord.
  
Demonstration 2
--------------------

* custom validations (using :validate)
* callbacks (before_save, before_validation)
* Setting a variable during the before_validation callback: 
  Use ``self`` when accessing the attribute.
  (see `trying to set a variable in before_validation but it isn't working <http://stackoverflow.com/questions/6065860/trying-to-set-a-variable-in-before-validation-but-it-isnt-working>`_).

Exercise 4.2
--------------------

* Read chapters 1-4 of `Validations <http://guides.rubyonrails.org/active_record_validations_callbacks.html>`_

* Add validations to the PizzaBurger models

Extra Reading
--------------------

* Read the rest of `Validations <http://guides.rubyonrails.org/active_record_validations_callbacks.html>`_

Demonstration 3
--------------------

* Single Table Inheritance
* Multi-Table (sort-of)Inheritance

  * Using composition
  * Using polymorphic associations

Exercise 4.3
--------------------

* Read the rest of `Association Basics <http://guides.rubyonrails.org/association_basics.html>`_

* Use single table inheritance to implement ``PizzaOrder`` and ``BurgerOrder``.

Exercise 4.4
--------------------

* Now use polymorphic associations

Screencasts
--------------------

* Watch `What goes in Active Records <https://www.destroyallsoftware.com/screencasts/catalog/what-goes-in-active-records>`_
* Watch `What goes in Active Records Part 2 <https://www.destroyallsoftware.com/screencasts/catalog/what-goes-in-active-records-part-2>`_

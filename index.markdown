Ruby on Rails Bootcamp
======================

This document is targeted at programmers that don't know a thing about Ruby on Rails 
and want to learn.

The purpose of this document is to guide people who want to learn RoR through the process.

**Table of Contents**

* table of contents
{:toc}

Introduction
------------

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
  * Windows - [RailsInstaller](http://railsinstaller.org/)
  * Linux/Mac - Rvm
    Ruby Version Manager - allows running multiple versions of Ruby on the same machine
    (so people can run legacy Ruby 1.8 web apps and new 1.9 web apps side-by-side).

* Development Environment
  You can use whatever you want:
  * Vim
  * Sublime Text => recommended for beginners
  * RubyMine
  * NotePad++


Part 1 - The Ruby Language
------------------------------

* Read the [Ruby Language QuickStart](http://www.ruby-lang.org/en/documentation/quickstart)

### Exercise #1.1

* Create the `PizzaBurger` application that will show this menu:

        Welcome to PizzaBurger,
        What would you like to do?

        1. Order a pizza
        2. Order a burger
        3. List all orders
        4. Cancel and order
        0. Exit

* Pressing **1** will ask the user:

        Ordering a pizza!

        Your name: Bob
        Your phone number: 054-1234567
        Which toppings: onions and pepperoni
        How many pizzas: 3

* Pressing **2** will ask the user:

        Ordering a burger!

        Your name: Joe
        Your phone number: 054-7654321
        How would you like your burger: medium-rare
        Would you like fries: yes
      
* Pressing **3** will show:
        
        The current orders are:
        
          1) 3 pizzas with onions and pepperoni
             Bob, 054-1234567

          2) Burger with fries (medium-rare)
             Joe, 054-7654321

* Pressing **4** will ask the user:
        
        Which order would you like to cancel? 1

        Order details:

          1) 3 pizzas with onions and pepperoni
             Bob, 054-1234567

        Are you sure? yes

        The order has been cancelled.
      
* Pressing **0** will display "Thank you for using PizzaBurger" and exit.

**Notes:**

* Create the following classes:
  * `PizzaBurger`
      * has a method named `menu` which shows the menu.
      * has an instance (member) variable named `orders` which will contain all of the orders.
  * `PizzaOrder` - contains the parameters for a pizza order.
  * `BurgerOrder` - contains the parameters for a pizza order.

* Do not concatenate strings (`"123" + x`), use `"123#{x}"`.
* Override the `to_s` method for `PizzaOrder` and `BurderOrder` to display the details
* Validate all of the user input, if invalid show error messages and ask to enter again.

Schedule
------------

| Week/Day | Sunday | Monday | Tuesday | Wednesday | Thursday |
| ----------------------------------------------------------- |
| Week #1  | Intro Lecture <br> bla    |        |         |           |          |



Bla Bla
-------

* Debugging
* Deployment

Stuff in Ruby that confuses new programmers:
  blocks
  => vs :


List of external sources

STOP READING THE BOOK!!!!! I FOUND A BETTER WAY TO LEARN RoR:
1. first go over the exercises in TryRuby: http://tryruby.org/
2. sign up (for free) in http://railsforzombies.org/ (it's a hands-on online course)

3. watch these:
  - http://railscasts.com/episodes/201-bundler-revised
  - http://railscasts.com/episodes/279-understanding-the-asset-pipeline
  - http://railscasts.com/episodes/318-upgrading-to-rails-3-2
  - http://railscasts.com/episodes/285-spork
  - http://railscasts.com/episodes/324-passing-data-to-javascript
  - http://railscasts.com/episodes/334-compass-css-sprites

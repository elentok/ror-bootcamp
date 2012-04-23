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

* Download [the Book of Ruby](from http://www.sapphiresteel.com/ruby-programming/The-Book-Of-Ruby)
* Read the introduction (pages 5-9)

### Exercise #1.1 - Strings, Numbers, Classes and Objects

* Read chapter 1, 5 and 7 (without "Digging Deeper")
* Create a command-line application:
  * Create a class named **PhoneBook** with a method named **menu**, when the method is called it will show this menu:
    1. List all contacts
    2. Add contact
    3. Delete contact
    0. Exit

  * For now pressing 1-3 will just tell the user what was selected and will display the menu again.
  * Pressing 0 will exit the application.


### Exercise #1.2a - Attributes and Class Variables

* Read chapter 2 (without "Digging Deeper")
* Modify the previous application:

  * Create a class called **Contact** with two attributes: name and phone number
  * Implement the "Add contact" action:
    Ask the user for the name and phone number and create a new contact object

### Exercise #1.2b - Class Hierarchies

* Modify the previous application:
  * Create two classes that inherit from **Contact**: 
    * **Person** - will have a birthday attribute
    * **Organization** - will have a fax attribute
  * Instead of the **"2. Add contact"** add two menu items (delete contact should become 4):
    * 2 Add person - will also read the birthday from the user
    * 3 Add organization - will also read the fax from the user

### Exercise #1.3 - Strings and Ranges

* Read chapter 3 (pages 47-55).
* Modify the previous application:
  * Everywhere you used '+' to combine strings, use the "#{variable}" technique.

TODO: NEED A BETTER EXERCISE

### Exercise #1.4a - Arrays

* Read pages 61-72 of chapter 4
* Implement all of the menu items (list, add and delete) so that the 
  contacts are stored in an array (member variable of the **PhoneBook** class).

### Exercise #1.4b - Hashes

* Read pages 73-77 of chapter 4
* Modify the application:
  * Instead of an array the contacts are stored in hash where the key is the contact's name.
  * When listing the contacts, sort them by the name


### TODO


Chapter6 (conditionals)
Chapter7 (methods???)
Chapter8 (arguments and returning values)
Chapter9 (exceptions)
Chapter10 (blocks, procs and lambdas)
Chapter11 (symbols)
Chapter12 (modules and mixins)
Chapter13 (files and I/O)
Chapter14 (yaml)
Chapter16 (regular expressions)
Chapter18
  pages 327-336 (IRB and debugging)
  pages 342-344 (line breaks, graphic debuggers)
Chapter20 (dynamic programming)


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

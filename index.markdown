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
  * The newest version of Rails of 3.2, the old version is 2.x
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

* Read chapter 1 (pages 13-25).
* Write a command-line phonebook application:

  * When the app starts it shows the main menu:
    1. List all contacts
    2. Add contact
    3. Delete contact
    4. Exit

  * Pressing 2 will ask the user for the name and phone number of the contact and add it to a list of contacts
  * Each contact will be stored in a class called **Contact**

  



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

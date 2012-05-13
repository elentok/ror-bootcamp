======================
Ruby on Rails Bootcamp
======================

`Back <index.html>`_

Part 2 - Ruby Gems
==========================

.. contents::

Demonstration
--------------------

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
--------------------

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
--------------------

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


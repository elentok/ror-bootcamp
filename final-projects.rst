====================
Final Projects Ideas
====================

.. sectnum::
   :suffix: .

`Back <index.html>`_

.. contents::

Task Management
===============

* Write a task management application based on http://kanbanflow.com

* User Stories:

  * As an admin I want to add/edit/delete user groups
  * As an admin I want to add/edit/delete users
  * As an admin I want to add/edit/delete boards
  * As an admin I want to modify the columns on a board
  * As an admin I want to define which user groups can view/edit which board
  * As a user I want to login to the system
  * As a user I want to add/edit/delete tasks to a board
    
    * I want to set the **title** for a task
    * I want to set the **description** for a task
    * I want to set the **time spent** on a task
    * I want to set the **time estimated** for a task
    * I want to assign the task to a **user** (a task can be unassigned)
    * I want to define **tags** for a task
    * I want to define **subtasks** for a task
    * I want to comment on a task (multiple comments)
    * I want to move tasks between columns



Code Review
===========

* Write an application that will allow code reviewing git repositories.

* User Stories:

  * As a reviewer I want to be able to review comments

    * I want to see a list of commits
    * I want to see which of those commits haven't been reviewed
    * I want to add comments to files in a commit
    * I want to be able to switch between diff view and complete file view

  * As a reviewie I want to be notified when my commits were reviewed
  * As a reviewie I want to see the comments on my commits

  * As an admin I want to add/edit/delete user groups
  * As an admin I want to add/edit/delete users
  * As an admin I want to add/edit/delete repositories
  * As an admin I want to define which user groups can see/review which repositories
  * As a user I want to login to the system

* You can access git repositories using the "git" gem, for example:

  .. code-block:: ruby

    require 'git'

    repository = Git.open('/path/to/repository')
    master_tree = repository.gtree('master')
    master_tree.children.each do |filename, obj|
      puts "==========================="
      puts "Filename: #{filename}"
      puts "==========================="
      puts file.contents
      puts "==========================="
    end

* See http://rubydoc.info/gems/git/1.2.5/frames and https://github.com/schacon/ruby-git for more information

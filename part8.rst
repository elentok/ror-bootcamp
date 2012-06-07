=================
Part 8 - Git
=================

.. sectnum::
   :suffix: .

`Back <index.html>`_

.. contents::

Demonstration
=============

* What is git?
* Initializing a repository
* What is the index? (staging)
* Commiting
* Pushing changes
* Branches
* Merging
* Rebase
* Resolving conflicts


Exercise
========

* Read http://rogerdudler.github.com/git-guide/

Part 1
------

* Configuring user and email (these will be assigned to all your commits)::

    git config --global user.name 'My Name'
    git config --global user.email 'me@myhost.com'

* Create a repository (`git init`)
* Add some files and commit::

    git add --all
    git commit -m "commit message"

* Change one of the files
* Use `git diff` to see the changes
* Add those changes to the index file (`git add {file}`)
* Run `git diff` - you can see your working directory has no changes
  (git diff shows the changes between your working directory and the staging area)

Part 2
------

* Create a bare repository (`git init --bare`)
* Make some commits
* Clone the repository
* Make some commits in the cloned repository

* In groups:

  * Create a remote repository
  * Each member of the group should clone the repository
  * Each member should commit once and push (use rebase to handle conflicts)
  * Each member should commit multiple times (change all existing files) and push

* Use http://gitready.com for reference




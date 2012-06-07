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

* Create a repository (``git init``)
* Add some files, and run ``git status`` (you'll see the new files under "untracked files")
* now commit::

    git add --all
    git commit -m "commit message"

* Change one of the files
* Use ``git diff`` to see the changes
* Add those changes to the index file (``git add {file}``)
* Run ``git diff``, you can see your working directory has no changes
  (git diff shows the changes between your working directory and the staging area)

Part 2
------

* Create a bare repository (``git init --bare``), we'll call it **REPO0**
* Clone that repository (``git clone path-to-other-repo directory-of-other-repo``), 
  we'll call it **REPO1**
* Make some commits and push them (``git push -u origin master``)
* Make some commits and push them (``git push`` - after pushing with ``-u``, 
  you don't need to add the ``-u origin master`` part anymore)
* Clone the first repository again (in a different directory), we'll call this one **REPO2**
* Make some commits in REPO2, and push them to REPO0
* Go back to REPO1 and pull the changes

Part 3
------

* In groups:

  * Create a remote repository (using github, bitbucket, SCM manager, etc...)
  * Each member of the group should clone the repository
  * Each member should commit once and push (use rebase to handle conflicts)
  * Each member should commit multiple times (change all existing files) and push

Reference
---------

* Use http://gitready.com for reference




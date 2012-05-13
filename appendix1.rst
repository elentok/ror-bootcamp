======================
Ruby on Rails Bootcamp
======================

`Back <index.html>`_

Appendix 1 - Linux
============================================================

.. contents::

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


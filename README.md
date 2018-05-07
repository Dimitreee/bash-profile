bash-profile
============

This repo contains bash profiling specifics, such as color control or PS1 manipulation, that can be shared with other to increase productivity.  It is suggested to link the default user files (~/.bash_profile) to the files in this repo (<git_repo>/bash_profile, <git_repo>/bash_login, and <git_repo>/profile, respectively) then simply update the files in the repo.  Please consider that other users may be using these as well, so please keep the configurations as portable as possible. ./setup.sh has been provided to conveniently do the initial symlink setup.

Installation
============

To install these bash profiling files, run setup.sh.  This will backup anything that may be in it's way (in ~/.<file>.bak), then create symlinks into this repository so you can keep your bash profile updated with just a git pull.

Important Information
=====================

Order of files loaded by a "login" bash shell:

1. /etc/profile
2. ~/.bash_profile

Order of files loaded by a non-login shell:

1. /etc/bash.bashrc
2. ~/.bashrc

Difference between each file:

- /etc/profile and /etc/bash.bashrc are system wide files that gets executed by all users by default.
- ~/.bashrc is loaded when a new shell is spawned that does not require login credentials (like a new terminal window being spawned inside an existing X session)

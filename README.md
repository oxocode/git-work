<a name="top"/>

# Git-Work

Includes commands for working with git feature branches efficiently.
Most of these commands are used every day.

If I find myself typing the same native Git commands repetitively, I usually create a new bash script to execute
those commands to save myself a few keystrokes. It allows me to operate more efficiently.

Because I've compiled most commands on-the-fly, they'll need some cleanup before I add them to
this repository.

I hope others will find them useful.

## Prerequisites

The scripts in this repository are written in Bash, Ruby, and Python and execute native Git commands.

In order to run all commands, the following applications should already be installed on your machine.

If either Ruby or Python is not installed, you will not be able to execute all of these commands.

* Git 2.1+
* Ruby 1.93+
* Python 2.7+

## Installation

Clone this repository to a directory (e.g. `/usr/local/bin`) that is in the list of `PATH` environment variable.

Alternatively, clone this repository into a directory and add it to the `PATH` environment variable.

## Commands

* [git create-feature](https://github.com/oxocode/git-work/blob/master/man/git-create-feature.md)
* [git archive-feature](https://github.com/oxocode/git-work/blob/master/man/git-archive-feature.md)
* git last
* git merged [-r | --remote] [-l | --local] [-lr]
* git notmerged [-r | --remote] [-l | --local] [-lr]
* git new [-f | --feature] [-b | --bugfix] [--hotfix]

## Commands _(otw)_

Just a few of the commands _(otw)_:

* git ancestor
* git bean
* git both-merged
* git cleanup
* git compare-branches
* git compare-repos
* git find-repos
* git merge-feature
* git when-merged
* git work
* git wtf
* git zip-changes

[Go to top](#top)

> #**DUH**
>
>  Just a few notes of the `duh` variety that allow me to feel as if I'm doing my due diligence:
>
> * Don't be a wiener; Test commands before running them in production environments.
> * If you're unsure of what a command does, don't run it.
> * If you break, delete, lose, can't find, or otherwise _misplace_ something, I am not liable.
>  * I am, however, available if you have any questions.
>  * I will not, however, be able to fix, revert, find, or restore something you lose. #IJS

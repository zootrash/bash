#!/bin/bash
#
# pulls all git repos
#
####################
#
# pullall pre-alpha
#
####################

# git repos
bashrepo=~/Documents/git/bash
crepo=~/Documents/git/c
filedumprepo=~/Documents/git/filedump
projrepo=~/Documents/git/proj
pythonrepo=~/Documents/git/python
resrcrepo=~/Documents/git/resrc
sprepo=~/Documents/git/sp

# bash
cd $bashrepo
git pull $bashrepo

# c
cd $crepo
git pull $crepo

# filedump
cd $filedumprepo
git pull $filedumprepo

# proj
cd $projrepo
git pull $projrepo

# python
cd $pythonrepo
git pull $pythonrepo

# resrc
cd $resrcrepo
git pull $resrcrepo

# sp
cd $sprepo
git pull $sprepo

exit

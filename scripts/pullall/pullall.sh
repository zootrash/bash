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
echo "Checking bash repo . . ."
git pull origin master
echo

# c
echo "Checking c repo . . ."
cd $crepo
git pull origin master
echo

# filedump
cd $filedumprepo
echo "Checking filedump repo . . ."
git pull origin master
echo

# proj
cd $projrepo
echo "Checking proj repo . . ."
git pull origin master
echo

# python
echo "Checking python repo . . ."
cd $pythonrepo
git pull origin master
echo

# resrc
echo "Checking resrc repo . . ."
cd $resrcrepo
git pull origin master
echo

# sp
cd $sprepo
echo "Checking sp repo . . ."
git pull origin master
echo

exit

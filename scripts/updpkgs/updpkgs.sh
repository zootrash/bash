#!/bin/bash
#
# Updates packages
#
####################
#
# updpkgs pre-alpha
#
####################

# home
homedir=~

# change to the home directory
cd $homedir

# perform commands
sudo apt-get update
sudo apt-get upgrade
sudo apt-get dist-upgrade
sudo apt-get autoremove

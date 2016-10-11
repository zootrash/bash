#!/bin/bash
#
# Updates local scripts on lab machines with current scripts
# through git
#
####################
#
# updlocss pre-alpha
#
####################

# src (current scripts)
srcdir=~/Documents/git/bash/scripts/*

# dst (local scripts)
dstdir=~/.scripts

# update local scripts with current scripts
cp -r $srcdir $dstdir

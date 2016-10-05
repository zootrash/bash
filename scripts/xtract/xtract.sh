#!/bin/bash
#
# Shortcut for appropriate extraction program
#
####################
#
# xtract pre-alpha
#
####################

# define variables

# number of arguments check
if [ $# -ne 1 ]; then
	echo "Error: Must include one argument."
	exit
fi

# check if file exists
if [ -f $1 ]; then
	echo "yolo"
	# select appr. extraction program

else
	echo "File $1 does not exist."
fi

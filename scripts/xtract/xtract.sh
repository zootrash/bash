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
	# select appr. extraction program
	case $1 in
		
		# .tar.gz extraction
		*.tar.gz)					tar -xvzf $1 
		echo "tar.gz xtract success!"
		;;

		# invalid format
		*)								echo "xtract failed: $1 is an invalid format." ;;

	esac
	# select appr. extraction program

else
	echo "File $1 does not exist."
fi

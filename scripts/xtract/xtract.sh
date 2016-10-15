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

# check if file exists and select appr. extraction program
if [[ $# -eq 1 ]]; then
	FILEDIR=$(dirname $1)
	echo "xtract: Extracting to directory $FILEDIR"

	if [ -f $1 ]; then
		case $1 in
			*.tar.gz)					tar -xvzf $1 -C $FILEDIR			# .tar.gz extraction
			echo "xtract: tar.gz extraction success!" ;;

			*.gz)							gunzip -c $1  # .gz extraction
			echo "xtract: .gz extraction success!" ;;

			*)								echo "xtract: $1 is an invalid format. Extraction failed." ;;

		esac
	else
		echo "xtract: File $1 does not exist. Extraction failed."
		exit
	fi

# check if both arguments exist
elif [[ $# -eq 2 ]]; then
	echo "xtract: Extracting to directory: $2"

	if [ -f $1 -a -d $2 ]; then
		case $1 in
			*.tar.gz)					tar -xvzf $1 -C $2						# .tar.gz extraction
			echo "xtract: tar.gz extraction success!" ;;

			*.gz)							gunzip -d $1 $2								# .gz extraction
			echo "xtract: .gz extraction success!" ;;

			*)								echo "xtract: $1 is an invalid format. Extraction failed." ;;

		esac
	else
		echo "xtract: Invalid file $1 or directory $2. Extraction failed."
		exit
	fi

else
	echo "xtract: Invalid number of arguments."
	exit

fi 

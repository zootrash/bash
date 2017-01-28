#!/bin/bash
#
# Generates a backup file or directory
#
####################################
#
# bk 2.0 
#
####################################

strlen=0
tempstr=""

if [ $# -eq 0 ]; then
	echo "bk.Error: Must include arguments."
	echo
else
	for FILE in "$@"
	do
		if [ -f $FILE ]; then
			echo "File $FILE found. Backing up now . . ."
			cp $FILE $FILE.backup
		elif [ -d $FILE ]; then
			echo "Directory $FILE found. Backing up now . . ."

			# check if last character is a slash
			if [[ $FILE = */ ]]; then
				strlen=${#FILE}
				tempstr=${FILE:0:strlen-1}
				cp -r $FILE $tempstr.backup

			else
				cp -r $FILE $FILE.backup
			fi
		else
			echo "File $FILE does not exist."
		fi
	done
fi

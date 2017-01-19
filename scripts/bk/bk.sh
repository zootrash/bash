#!/bin/bash
#
# Generates a backup file or directory
#
####################################
#
# bk 1.0 
#
####################################

# bk 2.0 (Working)
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
				echo "hello"
				#cp -r test/ test.backup/

			else
				#cp -r test test.backup/
				cp -r $FILE $FILE.backup
			

			fi
		else
			echo "File $FILE does not exist."
		fi
	done
fi

### main ###
#echo "Enter the file name or directory you wish to backup: "
#read FILE
#
#if [ -f $FILE ]; then
#	echo "File $FILE found. Backing up now..."
#	cp $FILE $FILE.backup
#	echo "Backup completed."
#elif [ -d $FILE ]; then
#	echo "Directory $FILE found. Backing up now..."
#	cp -r $FILE $FILE.backup
#	echo "Backup completed."
#else
#	echo "File $FILE does not exist."
#fi
### end main ###

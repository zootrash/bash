#!/bin/bash

# backup your files or directories!
# command: bk

echo "Enter the file name or directory you wish to backup: "
read FILE

if [ -f $FILE ]; then
	echo "File $FILE found. Backing up now..."
	cp $FILE $FILE.backup
	echo "Backup completed."
elif [ -d $FILE ]; then
	echo "Directory $FILE found. Backing up now..."
	cp -r $FILE $FILE.backup
	echo "Backup completed."
else
	echo "File $FILE does not exist."
fi

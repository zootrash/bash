#!/bin/bash
#
# Runs valgrind for specified executable and checks for memory leaks
#
####################
#
# leakcheck pre-alpha
#
####################

# argument check
if [ $# -ne 1 ]; then
	echo "Error: Must include one argument"
	exit
fi

# executable check
if [ -x $1 ]; then
	echo "Checking for any memory leaks..."
	`valgrind --tool=memcheck --leak-check=yes "./$1"`
else
	echo "Error: Either file does not exist or is not an executable"
fi

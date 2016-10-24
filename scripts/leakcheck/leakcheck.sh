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
if [ $# -eq 0 ]; then
	echo "Error: Must include arguments"
	exit
fi

# executable check
if [ -x $1 ]; then
	echo "Checking for any memory leaks..."
	`valgrind --tool=memcheck --leak-check=yes "./$*"`
else
	echo "Error: Either file does not exist or is not an executable"
	exit
fi

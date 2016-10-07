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
fi

# executable check
if [ -x $1 ]; then
	echo "valgrind dis faka"
else
	echo "Error: Targeted file must be an executable"
fi

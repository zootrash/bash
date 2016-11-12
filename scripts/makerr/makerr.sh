#!/bin/bash
#
# outputs gcc compiler output to a text file.
# requires a makefile!
#
####################
#
# makerr pre-alpha
#
####################

results="results.txt"

echo "Producing results from makefile . . ."
echo
`make &> $results`

if [ -e $results ];
then
	echo "Results completed!"
	echo
else
	echo "makerr: Error occured."
	echo
fi

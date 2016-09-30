#!/bin/bash

# generate a random password!
# command: pgen

# def vars
regex_int='^[0-9]+$'			# regex for integer check
lb=1							# lower bound for password length
ub=12							# upper bound for password length
N_ARR=4						# number of indicies for R_ARR

R_ARR[0]="ABCDEFGHIJKLMNOPQRSTUVWXYZ"		# upper case array
R_ARR[1]="abcdefghijklmnopqrstuvwxyz"		# lower case array
R_ARR[2]="1234567890"										# integer array
R_ARR[3]="!@#$%^&*()[];',./"						# symbol array

#R_ARR="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890!@#$%^&*()[];',./"																	# single random array (size 79)

### begin checks ###
# argument check
if [ $# -ne 1 ]; then
	echo "Error: Must include one argument"
	exit
fi

# integer check
if ! [[ $1 =~ $regex_int ]]; then
	echo "Error: Not a number"
	exit
fi

# range check
if [ "$1" -lt "$lb" -o "$1" -gt "$ub" ]; then
	echo "Error: Must be in the range from 1 - 12."
	exit
fi
### end checks ###

### main ### 
# generate random value for specific array
DIFF=$(($1-$lb+1))

# R = which index for main array to choose from
# ARR_LEN = array length for specified R
PROC_ID=$!
echo "proc id $PROC_ID"
for i in `seq $1`
do
	CHOOSE_ARR=$(date +"%s")						# random number generator for array
	CHOOSE_IND=$(date +"%s")						# random number generator for index

	echo "rpone = $RPONE"
	echo "rtwo = $RPTWO"

	TARR=$(($(($CHOOSE_ARR%$N_ARR))))		# temporary random array
	TARR_LEN=${#R_ARR[$TARR]}						# array length for specified TARR
	TARR_RAN=$(($ARR_LEN-1))						# array range
	
	for j in $(seq 0 $TARR_RAN)
	do
		echo $j
		
		#R=$(($(($RANDOM%($N_ARR+1)))))
	done
done
kill "$PROC_ID"

### end main ###

### notes ###
# integer check may need to change due to [[ ]] portability issues.

# Brett Jennings came up with the RANDOM_SEC idea as a second random number
# generator

#stringz[0]="to" 
#stringz[1]="pimp"
#stringz[2]="a"
#echo ${stringz[1]:1:1}

	#for j in $(seq 0 3)
	#do
		
		#R=$(($(($RANDOM%($N_ARR+1)))))
	#done

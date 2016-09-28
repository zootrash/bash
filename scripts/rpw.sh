#!/bin/bash

# generate a random password!
# command: rpw

# def vars
re='^[0-9]+$'			# regex for integer check
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
if ! [[ $1 =~ $re ]]; then
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
RANDOM_PROC=$$
RANDOM_SEC=$(date +"%S")

# R = which index for main array to choose from
# ARR_LEN = array length for specified R
for i in `seq $1`
do
	R=$(($(($RANDOM_PROC%$N_ARR))))			# index for which array
	ARR_LEN=${#R_ARR[$R]}								# array length for specified R
	ARR_RAN=$ARR_LEN - 1
	
	for j in $(0 ($ARR_LEN - 1))
	do
		echo $j
		
		#R=$(($(($RANDOM%($N_ARR+1)))))
	done
done

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

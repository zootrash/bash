#!/bin/bash
#
# Generates a random password to an output file npw.txt
#
####################
#
# pgen 1.0
#
####################

# define variables and random arrays
regex_int='^[0-9]+$'			# regex for integer check
lb=1											# lower bound for password length
ub=12											# upper bound for password length
N_RARR=4									# number of indicies for R_ARR

R_ARR[0]="ABCDEFGHIJKLMNOPQRSTUVWXYZ"		# upper case array
R_ARR[1]="abcdefghijklmnopqrstuvwxyz"		# lower case array
R_ARR[2]="1234567890"										# integer array
R_ARR[3]="!@#$%^&*()[];',./"						# symbol array

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

### main ### 
for i in `seq $1`
do
	RG_ARR=$RANDOM		# randomly generated number for temporary array
	RG_IND=$RANDOM		# randomly generated number for temporary index

	TARR=$(($(($RG_ARR%$N_RARR))))				# temporary random array
	TARR_LEN=${#R_ARR[$TARR]}							# array length for specified TARR
	TIND=$(($(($RG_IND%($TARR_LEN-1)))))	# temporary random index
	NPW+=${R_ARR[$TARR]:$TIND:1}					# build new password	
done

echo $NPW > npw.txt
### end main ###

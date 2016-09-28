#!/bin/bash

# generate a random password!
# command: rpw

# def ran upper, lower, number, and symbol arrays
#RU_ARR="ABCDEFGHIJKLMNOPQRSTUVWXYZ"
#RL_ARR="abcdefghijklmnopqrstuvwxyz"
#RN_ARR="1234567890"
#RS_ARR="!@#$%^&*()[];',./"
R_ARR[0]="ABCDEFGHIJKLMNOPQRSTUVWXYZ"
R_ARR[1]="abcdefghijklmnopqrstuvwxyz"
R_ARR[2]="1234567890"
R_ARR[3]="!@#$%^&*()[];',./"

# single random array, size 79
#R_ARR="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890!@#$%^&*()[];',./"

# regex to check for integers
# notice the single quotes
re='^[0-9]+$'

# bounds for pw length
lb=1
ub=12

# loop vars
N_ARR=4

# main
echo "Enter the length of the generated password (max 12): "
read PLEN

# if plen is a number 
# throw error if plen > 12 or not a number
if ! [[ $PLEN =~ $re ]]; then
	echo "Error: Not a number"
	exit
elif [ "$PLEN" -lt "$lb" -o "$PLEN" -gt "$ub" ]; then
	echo "Error: Number is out of range."
	exit
else
	echo "Valid number detected!"
	echo "this is a test ${R_ARR[1]}"
fi

# two random generators
# one for picking a line of the array
# another for picking a random index within specfic array
# begin loop


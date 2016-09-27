#!/bin/bash

# personal ai
# command: eve

# env
DATE=$(date +"%m-%d-%Y")
TIME=$(date +"%r")

# def text colors
bldpur='\e[1;35m' # bold purple
txtwht='\e[0;37m' # text white

# ai and user text color
ai_color=$bldpur
u_color=$txtwht

# first response
echo -e "${ai_color}Yes?"
echo -e "${u_color}"
read RESPONSE

# user wants to know the time
REQ_TIME=*"time"*
REQ_DATE=*"date"*

if [[ $RESPONSE == $REQ_TIME ]]; then
	echo -e "${ai_color}The time is currently $TIME."
elif [[ $RESPONSE == $REQ_DATE ]]; then
	echo -e "${ai_color}Today's date is $DATE."
else
	
	echo -e "${ai_color}I'm sorry, I am unable to reply to your comment."
fi


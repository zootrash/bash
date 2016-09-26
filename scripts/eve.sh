#!/bin/bash

# personal ai
# command: eve

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
REQ_TIME="time"
if [ $RESPONSE == $REQ_TIME ]; then
	echo "i found the word time"
else
	echo "nope didnt work"
fi


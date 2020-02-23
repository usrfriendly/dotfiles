#!/bin/bash
TEST=$(echo -e "lock screen\nlog out\nshut down\nreboot" | rofi -dmenu -p "What would you like to do?")
LOGTEST=$(echo -e "Yes\nNo" | rofi -dmenu -p "Are you sure you want to $TEST")

if [[ $TEST == "lock screen" ]]; then
	xautolock -locknow
elif [[ $TEST == "log out" ]]; then
	if [[ $LOGTEST == "Yes" ]]; then
		i3-msg exit
	else
		exit
	fi
elif [[ $TEST == "shut down" ]]; then
	if [[ $LOGTEST == "Yes" ]]; then
		shutdown -h now
	else
		exit
	fi
elif [[ $TEST == "log out" ]]; then
	if [[ $LOGTEST == "Yes" ]]; then
		reboot	
	else
		exit
	fi
else
	exit
fi

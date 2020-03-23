#!/bin/bash
TEST='echo -e "Lock Screen\nLog Out\nShut Down\nReboot" | rofi -dmenu -p "What would you like to do?"'

LOGTEST='echo -e "Yes\nNo" | rofi -dmenu -p "Are you sure you want to $ANS"'

ANS=$(eval $TEST)
if [[ $ANS == "Lock Screen" ]]; then
	xautolock -locknow
elif [[ $ANS == "Log Out" ]]; then
	if [[ $(eval $LOGTEST) == "Yes" ]]; then
		openbox --exit
	fi
elif [[ $ANS == "Shut Down" ]]; then
	if [[ $(eval $LOGTEST) == "Yes" ]]; then
		systemctl poweroff
	fi
elif [[ $ANS == "Reboot" ]]; then
	if [[ $(eval $LOGTEST) == "Yes" ]]; then
		systemctl reboot
	fi
else
	exit
fi

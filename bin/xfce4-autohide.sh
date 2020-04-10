#!/bin/bash

TEST="xfconf-query -c xfce4-panel -p /panels/panel-1/autohide-behavior"

if [[ $TEST == 0 ]]
	then
		xfconf-query -c xfce4-panel -p /panels/panel-1/autohide-behavior -s 1
elif [[ $TEST == 1 ]] 
	then
		xfconf-query -c xfce4-panel -p /panels/panel-1/autohide-behavior -s 0
else
	xfconf-query -n -c xfce4-panel -p /panels/panel-1/autohide-behavior -s 1 -t int
fi

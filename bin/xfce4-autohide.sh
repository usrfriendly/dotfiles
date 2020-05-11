#!/bin/bash

TEST="xfconf-query -c xfce4-panel -p /panels/panel-1/autohide-behavior"

if [[ `eval $TEST` == 0 ]]
	then
		xfconf-query -c xfce4-panel -p /panels/panel-1/autohide-behavior -s 1
elif [[ `eval $TEST` == 1 ]] 
	then
		echo $TEST
		xfconf-query -c xfce4-panel -p /panels/panel-1/autohide-behavior -s 0
else
	xfconf-query -n -c xfce4-panel -p /panels/panel-1/autohide-behavior -s 1 -t int
fi

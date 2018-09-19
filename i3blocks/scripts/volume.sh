#! /bin/sh

voltest='pamixer --get-volume'

mutetest=`pamixer --get-mute`

if [ "$mutetest" = "true" ] ; then
	echo "<span color='#ef2929'></span>"
else
	echo " `${voltest}`%"
fi

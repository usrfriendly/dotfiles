#! /usr/bin/env bash

TEST=`acpi -b | awk '{print $3}'`
DISCHARGING=`acpi -b | awk '{print $4 " - "$5}' | sed -e 's/,//'`
CHARGING=`acpi -b | awk '{print " " $5}'`
PERC=`acpi -b | awk '{print $4}' | sed -e s/\%,//`

if [ "$TEST" == "Discharging," ]; then
	if [ "$PERC" -ge 0 -a "$PERC" -lt 20 ]; then
		echo "  " $DISCHARGING
	elif [ "$PERC" -ge 20 -a "$PERC" -lt 40 ]; then
		echo "  " $DISCHARGING
	elif [ "$PERC" -ge 40 -a "$PERC" -lt 60 ]; then
		echo "  " $DISCHARGING
	elif [ "$PERC" -ge 60 -a "$PERC" -lt 80 ]; then
		echo "  " $DISCHARGING
	elif [ "$PERC" -ge 0 -a "$PERC" -le 100 ]; then
		echo "  " $DISCHARGING
	elif [ "$PERC" -eq 100 ]; then
		echo "  FULL"
	fi
else if [ "$TEST" == "Charging," ]; then
	echo $CHARGING
fi
fi

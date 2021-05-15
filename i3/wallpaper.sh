#!/bin/bash
SIZE=`xrandr --current | sed -n '2p' | awk '{print $4}' | cut -d "+" -f1`

SCREENSIZE="$SIZE"

feh --bg-fill /usr/share/wallpapers/Next/contents/images/$SIZE.png

#! /bin/bash

scrot /tmp/screen.png
convert /tmp/screen.png -scale 10% -scale 1000% /tmp/screen.png

xautolock -corners "+-00" -time 1 -locker "/usr/bin/i3lock -p default -i /tmp/screen.png" -detectsleep -cornerdelay 1

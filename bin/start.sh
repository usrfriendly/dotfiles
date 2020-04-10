#!/usr/bin/env bash
echo -e "Choose a session:\
	\n 1) XFCE\
	\n 2) i3\
	\n"
read -p "Which session? " REPLY
echo
case "$REPLY" in
	1 ) startx /usr/bin/startxfce4;;
	2 ) startx /usr/bin/i3 ;;
esac

#!/bin/bash

if [[ $(pidof tint2) > 0 ]]; then
	pkill tint2
else
	tint2
fi

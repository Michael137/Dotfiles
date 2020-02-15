#!/bin/bash

# Bash script to control the monitor brightness
SYNTAX="\\n \\t SYNTAX: dimmer level \\n \\t Where 'level' ranges from 0 to 100.\\n";
LEVEL=$1

if [ -z $LEVEL ]; then
	echo -e $SYNTAX;
	exit 1;
fi

if [ $LEVEL -gt 100 ]; then
	echo -e $SYNTAX;
	exit 1;
fi

if [ $LEVEL -lt 0 ]; then
	echo -e $SYNTAX;
	exit 1;
fi

brightness_level="$(( $LEVEL / 100)).$(( $LEVEL % 100 ))"
screenname=$(xrandr | grep " connected" | cut -f1 -d" ")
xrandr --output $screenname --brightness $brightness_level;
echo -e "[info]: Screen Brightness level set to" $LEVEL"%"

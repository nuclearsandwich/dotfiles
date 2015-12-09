#!/bin/sh

#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)
#


if [ -f $HOME/.xprofile ]; then
	source $HOME/.xprofile
fi


exec i3
#exec urxvt -name "X11 Console"

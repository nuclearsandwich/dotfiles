#!/bin/sh

#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)
#


if [ -f $HOME/.xprofile ]; then
	source $HOME/.xprofile
fi


exec bspwm

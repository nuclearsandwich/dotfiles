#!/bin/sh

#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)
#

# Load new fonts.
xset +fp /usr/share/fonts/local
xset fp rehash


xrdb -merge ~/.Xresources
#compton -Cb -i 0.5 --detect-transient --detect-client-leader
xmodmap .capscontrol
synclient PalmDetect=1
synclient MaxTapTime=0
synclient VertScrollDelta=-127 # natural scrolling
touchegg &
start-pulseaudio-x11 &


DEFAULT_SESSION=i3
exec $DEFAULT_SESSION 

#!/bin/sh

#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)
#

# Load my Xresources file every time.
xrdb -merge ~/.Xresources

#DEFAULT_SESSION=$HOME/bin/startbfkiosk
DEFAULT_SESSION=xmonad
exec $DEFAULT_SESSION

case $1 in
	xmonad)
		exec /usr/bin/xmonad
		;;
	awesome)
		exec /usr/bin/awesome
		;;
	dwm)
		exec $HOME/bin/dwmrc
		;;
	wmii)
		exec $HOME/bin/wmiirc
		;;
	e17)
		exec ck-launch-session enlightenment_start
		;;
	kde)
		exec ck-launch-session startkde
		;;
	xfce)
		exec ck-launch-session startxfce4
		;;
	gnome)
		exec ck-launch-session gnome-session
		;;
	*)
		exec $DEFAULT_SESSION
		;;
esac

# exec $HOME/bin/dwmrc
# exec gnome-session
# exec /opt/kde/bin/startkde
# exec startxfce4
# exec icewm
# exec openbox
# exec blackbox
# exec fluxbox
# exec ratpoison
# exec dwm
# ... or any other WM of your choosing ...

#exec wmii -r $HOME/.wmii-3.5/wmiirc

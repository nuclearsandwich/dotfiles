#!/bin/sh

iconchar() {
	case $1 in
		term)
			echo -en "\uf120"
			;;
		www)
			echo -en "\uf269"
			;;
		chat)
			echo -en "\uf086"
			;;
		dev)
			echo -en "\uf126"
			;;
		mail)
			echo -en "\uf1d8"
			;;
		bonus)
			echo -en "\uf135"
			;;
		root)
			echo -en "\uf292"
			;;
		eDP1|eDP-1)
			echo -en "\uf109"
			;;
		HDMI1|HDMI-1|DP1|DP-1)
			echo -en "\uf263"
			;;
		M)
			echo -en "\uf002"
			;;
		T)
			echo -en "\uf009"
			;;
		*)
			echo -en "\uf005"
			;;
	esac
}

wmstatus="$2"

echo -n "%{T\$font[icon]}     "

IFS=$':'
for entry in ${wmstatus}; do
	case ${entry:0:1} in
		M|m|L)
			echo -n "%{F\$color[yellow]}"
			;;
		f)
			echo -n "%{F\$color[grey]}"
			;;
		o)
			echo -n "%{F\$color[blue]}"
			;;
		F|O)
			echo -n "%{F\$color[magenta]}"
			;;
		*)
			continue
			;;
	esac
	
	iconchar ${entry:1}
	echo -n "     "
done

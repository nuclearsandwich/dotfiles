#!/bin/sh
battery_status=$2
battery_percentage=$3

# https://fortawesome.github.io/Font-Awesome/cheatsheet/

echo -n "%{T\$font[icon]}"

if [ "$battery_status" == "F" ]; then
	echo -n "%{F\$color[cyan]}"
	echo -en "\uf1e6 "
elif [ "$battery_status" == "C" ]; then
	echo -n "%{F\$color[green]}"
	echo -en "\uf1e6 "
elif [ "$battery_status" == "D" ]; then
	echo -n "%{F\$color[yellow]}"
elif [ "$battery_status" == "D" -a $battery_percentage -le 5 ]; then
	echo -n "%{F\$color[brightred]}"
fi

if [ $battery_percentage -ge 90 ]; then
	echo -en "\uf240"
elif [ $battery_percentage -ge 60 ]; then
	echo -en "\uf241"
elif [ $battery_percentage -ge 40 ]; then
	echo -en "\uf242"
elif [ $battery_percentage -ge 5 ]; then
	echo -en "\uf243"
else
	echo -en "\uf244"
fi

echo " %{T-}${battery_percentage}%"

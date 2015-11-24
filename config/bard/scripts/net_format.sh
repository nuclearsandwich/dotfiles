net_name=$(echo $1 | xargs)
if [ $net_name = "Wired" ]; then
	echo -en "%{T\$font[icon]}\uf0ac"
elif [ -z $net_name ]; then
	echo -en "%{F\$color[red]}%{T\$font[icon]}\uf06a %{T-}No Connection"
else
	echo -en "%{T\$font[icon]}\uf1eb %{T-}$net_name"
fi

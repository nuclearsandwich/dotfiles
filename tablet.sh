touchscreen_regexp="Touchscreen.*id=([0-9]+)"
if [[ $(xinput | grep "Touchscreen") =~ $touchscreen_regexp ]]; then
	X_TOUCHSCREEN_DEVICE_ID=$[BASH_REMATCH[1]]
	export X_TOUCHSCREEN_DEVICE_ID
fi

tentme() {
	touchscreen_device_id=10
	xrandr --output eDP1 --rotate inverted
	xinput set-prop $X_TOUCHSCREEN_DEVICE_ID "Evdev Axis Inversion" 1, 1
	xinput set-prop $X_TOUCHSCREEN_DEVICE_ID "Evdev Axes Swap" 0
}

tabletme() {
	touchscreen_device_id=10
	xrandr --output eDP1 --rotate normal
	xinput set-prop $X_TOUCHSCREEN_DEVICE_ID "Evdev Axis Inversion" 0, 0
	xinput set-prop $X_TOUCHSCREEN_DEVICE_ID "Evdev Axes Swap" 0
}

laptopme() {
	touchscreen_device_id=10
	xrandr --output eDP1 --rotate normal
	xinput set-prop $X_TOUCHSCREEN_DEVICE_ID "Evdev Axis Inversion" 0, 0
	xinput set-prop $X_TOUCHSCREEN_DEVICE_ID "Evdev Axes Swap" 0
}

sidewaysme() {
	touchscreen_device_id=10
	xrandr --output eDP1 --rotate left
	xinput set-prop $X_TOUCHSCREEN_DEVICE_ID "Evdev Axis Inversion" 1, 0
	xinput set-prop $X_TOUCHSCREEN_DEVICE_ID "Evdev Axes Swap" 1
}
	

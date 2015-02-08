prepend_path() {
	if [[ -d "$1" ]]; then
		PATH="$1:$PATH"
	fi
}

append_path() {
	if [[ -d "$1" ]]; then
		PATH="$PATH:$1"
	fi
}


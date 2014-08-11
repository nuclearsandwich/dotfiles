pyispy2() {
	ln -s $HOME/.fuckpython/python2 $HOME/.fuckpython/bin/python
}

pyispy3() {
	ln -s $HOME/.fuckpython/python3 $HOME/.fuckpython/bin/python
}

pyissystem() {
	rm $HOME/.fuckpython/bin/python
}


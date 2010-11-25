PATH=$PATH:$HOME/bin
. $HOME/.bashrc

 
gemdoc() {
  local gems=(`gem env gemdir`/doc/$1*/rdoc/index.html)
  chromium ${gems[@]: -1}
}
		 
		complete -W '$(`which ls` $GEMDIR/doc)' gemdoc
export VIM_APP_DIR='/Users/steven/Applications/'

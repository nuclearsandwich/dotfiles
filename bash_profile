PATH=$PATH:$HOME/bin
$HOME/.bashrc

export EDITOR=vim
 
gemdoc() {
  local gems=(`gem env gemdir`/doc/$1*/rdoc/index.html)
  chromium ${gems[@]: -1}
}

asf
		 
		complete -W '$(`which ls` $GEMDIR/doc)' gemdoc
#export VIM_APP_DIR='/Users/steven/Applications/' # OSX
export _JAVA_AWT_WM_NONREPARENTING=1
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

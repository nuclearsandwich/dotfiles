PATH=$PATH:$HOME/bin
source $HOME/.bashrc

export EDITOR='vim'
export VISUAL='vim'
export HGEDITOR=$VISUAL


gemdoc() {
  local gems=(`gem env gemdir`/doc/$1*/rdoc/index.html)
  chromium ${gems[@]: -1}
}

export VIM_APP_DIR='/Users/steven/Applications/' # OSX
export _JAVA_AWT_WM_NONREPARENTING=1
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
[[ -s "$HOME/.nvm/nvm.sh" ]] && source "$HOME/.nvm/nvm.sh" # Load NVM into a shell.
if test -s "/Users/steven/.bashrc" ; then . "/Users/steven/.bashrc" ; fi

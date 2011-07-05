PATH=$PATH:$HOME/bin
source $HOME/.bashrc

export EDITOR='vim'
export VISUAL='mvim -f'


gemdoc() {
  local gems=(`gem env gemdir`/doc/$1*/rdoc/index.html)
  chromium ${gems[@]: -1}
}

export VIM_APP_DIR='/Users/steven/Applications/' # OSX
export _JAVA_AWT_WM_NONREPARENTING=1
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

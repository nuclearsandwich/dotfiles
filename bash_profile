PATH=$PATH:$HOME/bin
source $HOME/.bashrc

export EDITOR='vim'
export VISUAL='vim'
export HGEDITOR=$EDITOR
#eval `ssh-agent`


gemdoc() {
  local gems=(`gem env gemdir`/doc/$1*/rdoc/index.html)
  chromium ${gems[@]: -1}
}

export _JAVA_OPTIONS="-Dawt.useSystemAAFontSettings=on -Dswing.aatext=true \
-Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel"


export VIM_APP_DIR='/Users/steven/Applications/' # OSX
export _JAVA_AWT_WM_NONREPARENTING=1
#[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
#[[ -s "$HOME/.nvm/nvm.sh" ]] && source "$HOME/.nvm/nvm.sh" # Load NVM into a shell.
if test -s "/Users/steven/.bashrc" ; then . "/Users/steven/.bashrc" ; fi

if [ -d "$HOME/.android_sdk" ]; then
	export ANDROID_HOME="$HOME/.android_sdk"
	PATH=$PATH:"$ANDROID_HOME/tools":"$ANDROID_HOME/platform-tools"
fi

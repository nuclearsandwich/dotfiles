PATH=$PATH:$HOME/bin
source $HOME/.bashrc

export EDITOR='vim'
export VISUAL='vim'
export PAGER='less'
export HGEDITOR=$EDITOR
export _JAVA_OPTIONS="-Dawt.useSystemAAFontSettings=on -Dswing.aatext=true \
-Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel"

export _JAVA_AWT_WM_NONREPARENTING=1

if [ -d "$HOME/.android_sdk" ]; then
	export ANDROID_HOME="$HOME/.android_sdk"
	PATH=$PATH:"$ANDROID_HOME/tools":"$ANDROID_HOME/platform-tools"
fi

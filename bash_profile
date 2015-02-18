PATH=$PATH:$HOME/bin
source $HOME/.bashrc

EDITOR='vim'
VISUAL='vim'
PAGER='less'
HGEDITOR=$EDITOR

_JAVA_OPTIONS="-Dawt.useSystemAAFontSettings=on -Dswing.aatext=true \
-Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel"
_JAVA_AWT_WM_NONREPARENTING=1

export EDITOR VISUAL PAGER HGEDITOR _JAVA_OPTIONS _JAVA_AWT_WM_NONREPARENTING

if [ -d "$HOME/.android_sdk" ]; then
	export ANDROID_HOME="$HOME/.android_sdk"
	PATH=$PATH:"$ANDROID_HOME/tools":"$ANDROID_HOME/platform-tools"
fi

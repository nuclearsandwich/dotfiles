PATH=/usr/local/bin:$PATH:$HOME/bin
alias p='mpc toggle'
#alias ls='ls --color=auto' # Doesn't work on Mac.
alias ls='ls -GFbT' # Mac version of ^that^.
alias vi='vim'
#alias netcfg='sudo netcfg2'
alias sshPubSUN='ssh s1585915@10.3.105.10'
alias w='wicd-curses'
#eval `dircolors -b`
alias telinit='echo no'
alias Syu='sudo powerpill -Syu'
alias :e='$EDITOR'

# Map vim exit commands to bash since I will try them anyway.
alias :q='exit'
alias ZZ='exit'

export GREP_COLOR="1;33"
alias grep='grep --color=auto'
#alias urxvt='urxvt +sb -sh 35'

# Fun with prompt strings.

#PS1='[\u@\h \W]\$ '
#PS1='\[\e[1;32m\][\u@\h \W]\$\[\e[0m\] '
#PS1=\[\033[0;31m\][\@]\[\033[0;m\][\[\033[0;34m\]\u@\[\033[0;33m\]\h\[\033[0;m\] \w]\[\033[0;32m\]\$\[\033[0;31m\][\@]\[\033[0;m\][\[\033[0;34m\]\u@\[\033[0;33m\]\h\[\033[0;m\] \w]\[\033[0;32m\]\$

function get_branch {
	if [ -d .git ]; then
		BRANCH="$(git branch | awk '/\*/ { print $2 }')@"
	elif [ -d .hg ]; then	
		BRANCH="$(hg branch)@"
	else
		BRANCH=''
	fi
}
	
if [ -s $HOME/.rvm/scripts/rvm ]; then
 	source $HOME/.rvm/scripts/rvm
	alias gemset='rvm gemset'
fi


# Function from Steve Losh's article on zsh prompt customization
# [here](http://stevelosh.com/blog/2010/02/my-extravagant-zsh-prompt/#repository-types)
function repo_char {
    git branch >/dev/null 2>/dev/null && echo '±' && return
    hg root >/dev/null 2>/dev/null && echo '☿' && return
    echo '○'
}

hg_ps1() {
	hg prompt "{status}{update}" 2>/dev/null
}

git_ps1() {
	__git_ps1 "%s"
}

last_status() {
	s=$?
	if [ s = "0" ]; then
		echo "\[\e[0;32m\]${s}" && return
	fi
	echo "\[\e[0;22m\]${s}"
}


# Solarized colors
BLACK="\e[30m"
RED="\e[31m"
GREEN="\e[32m"
YELLOW="\e[33m"
BLUE="\e[34m"
MAGENTA="\e[35m"
CYAN="\e[36m"
WHITE="\e[37m"

LINE=$BLUE
BRKT=$BLUE
REPO=$WHITE
STAT=$RED
DATE=$GREEN
CDIR=$CYAN
PCHR=$GREEN
NORM=$MAGENTA

PROMPT_COMMAND="get_branch; $PROMT_COMMAND"
export PS1="\[$LINE\]┌─\[$BRKT\][ \[$STAT\]\$?\[$BRKT\] ][ \[$REPO\]\$(repo_char)\$(hg_ps1)\$ \[$BRKT\]][ \[$DATE\]\A \[$BRKT\]][ \[$CDIR\]\h:\${BRANCH}\W \[$BRKT\]]\n\[$LINE\]└─\[$PCHR\]> \[$NORM\]"

# ┌─[ 15:49 ][ ○!$ ][ swordfish:default@.dotfiles ]
# └─>

alias vim="/Applications/MacVim.app/Contents/MacOS/Vim"

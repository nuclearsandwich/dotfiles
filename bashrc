. $HOME/.dotfiles/paths.sh
prepend_path $HOME/bin
prepend_path $HOME/code/xtools

alias p='mpc toggle'
alias ls='ls --color=auto' # Doesn't work on Mac.
#alias ls='ls -GFbT' # Mac version of ^that^.
#alias vi='vim'
#eval `dircolors -b`
alias telinit='echo no'
alias Syu='sudo powerpill -Syu'
alias :e='$EDITOR'
alias cd..='cd ..' # Just shyaddupaboudit
#alias git='hub'
alias pushit='git push'

# Map vim exit commands to bash since I will try them anyway.
alias :q='exit'

export GREP_COLOR="1;33"
alias grep='grep --color=auto'

which xdg-open > /dev/null && alias open='xdg-open'

# Fun with prompt strings.

#PS1='[\u@\h \W]\$ '
#PS1='\[\e[1;32m\][\u@\h \W]\$\[\e[0m\] '
#PS1=\[\033[0;31m\][\@]\[\033[0;m\][\[\033[0;34m\]\u@\[\033[0;33m\]\h\[\033[0;m\] \w]\[\033[0;32m\]\$\[\033[0;31m\][\@]\[\033[0;m\][\[\033[0;34m\]\u@\[\033[0;33m\]\h\[\033[0;m\] \w]\[\033[0;32m\]\$

function get_branch {
	if [ -d .git ]; then
		BRANCH="$(git branch | awk '/\*/ { print $2 }')@"
#	elif [ -d .hg ]; then
#		BRANCH="$(hg branch)@"
	else
		BRANCH=''
	fi
}

# Function from Steve Losh's article on zsh prompt customization
# [here](http://stevelosh.com/blog/2010/02/my-extravagant-zsh-prompt/#repository-types)
function repo_char {
	git branch >/dev/null 2>/dev/null && echo 'Â±' && return
	hg root >/dev/null 2>/dev/null && echo 'â¿' && return
	echo 'â'
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

# ANSI Escape Sequences
# I gave up trying to keep custom colors everywhere, I now just
# redifine the ANSI colors in my Xresources.
BLACK="\e[30m"
RED="\e[31m"
GREEN="\e[32m"
YELLOW="\e[33m"
BLUE="\e[34m"
MAGENTA="\e[35m"
CYAN="\e[36m"
WHITE="\e[37m"
RESET="\e[0m"

LINE=$CYAN
BRKT=$GREEN
REPO=$WHITE
STAT=$RED
DATE=$MAGENTA
CDIR=$BLUE
PCHR=$YELLOW
NORM=$RESET

PROMPT_COMMAND="get_branch; $PROMT_COMMAND"
# PS1="\[$LINE\]\[$BRKT\][ \[$STAT\]\$?\[$BRKT\] ][ \[$REPO\]\$(repo_char)\$ \[$BRKT\]][ \[$DATE\]\A \[$BRKT\]][ \[$CDIR\]\h:\${BRANCH}\W \[$BRKT\]]\n\[$LINE\]└─\[$PCHR\]> \[$NORM\]"
PS1="[$?] $ "
export PS1


# Source Direnv if present. https://github.com/zimbatm/direnv
if [ -d "$HOME/.direnv" ]; then
	PATH="$HOME/.direnv/bin":$PATH
	eval `$HOME/.direnv/bin/direnv hook $0`
fi

if [ -f "$HOME/.tablet.sh" ]; then
	source $HOME/.tablet.sh
fi

if [ -f "$HOME/.owlman.sh" ]; then
	source $HOME/.owlman.sh
fi

if [ -d "$HOME/.fuckpython" ]; then
	PATH="$HOME/.fuckpython/bin":$PATH
	source "$HOME/.fuckpython/fuckpython.sh"
fi


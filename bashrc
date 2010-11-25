alias p='mpc toggle'
#alias ls='ls --color=auto' # Doesn't work on Mac.
alias ls='ls -GFbT' # Mac version of ^that^.
alias vi='vim'
#alias netcfg='sudo netcfg2'
alias sshPubSUN='ssh s1585915@10.3.105.10'
alias gemset='rvm gemset'
alias w='wicd-curses'
#eval `dircolors -b`
alias telinit='echo no'

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


# colored prompt
if [ "`tput colors`" = "256" ]; then
  B="\e[0;38;5;67m"
  G="\e[0;38;5;114m"
  Y="\e[0;38;5;214m"
 else
  B="\e[0;34m"
  G="\e[0;32m"
  Y="\e[0;33m"
fi

# Function from Steve Losh's article on zsh prompt customization
# [here](http://stevelosh.com/blog/2010/02/my-extravagant-zsh-prompt/#repository-types)
function repo_char {
    git branch >/dev/null 2>/dev/null && echo '±' && return
    hg root >/dev/null 2>/dev/null && echo '☿' && return
    echo '○'
}

W="\e[0m"
PROMPT_COMMAND="get_branch; $PROMT_COMMAND"
PS1="\[$B\]┌─\[$W\][ \[$Y\]\A \[$W\]][ \[$G\]\h:\${BRANCH}\W \[$W\]]\n\[$B\]└─\[$Y\]> \[$W\]"


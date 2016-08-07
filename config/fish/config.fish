eval (dircolors -c ~/.dircolors | sed 's/>&\/dev\/null$//')

if test -z "$SSH_ENV"
	setenv SSH_ENV $HOME/.ssh/environment
end

if not __ssh_agent_is_started
	__ssh_agent_start
end

# Use rbenv instead of chruby for meow.
#source "$HOME/.config/fish/functions/chruby_auto.fish"
status --is-interactive; and . (rbenv init -|psub)
status --is-interactive; and . (nodenv init -|psub)

if which direnv > /dev/null
	eval (direnv hook fish)
end


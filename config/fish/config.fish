eval (dircolors -c ~/.dircolors | sed 's/>&\/dev\/null$//')

if test -z "$SSH_ENV"
	setenv SSH_ENV $HOME/.ssh/environment
end

if not __ssh_agent_is_started
	__ssh_agent_start
end

# Use rbenv instead of chruby for meow.
#source "$HOME/.config/fish/functions/chruby_auto.fish"
if command -v rbenv > /dev/null
	status --is-interactive; and source (rbenv init -|psub)
end

if command -v nodenv > /dev/null
	status --is-interactive; and source (nodenv init -|psub)
end

if command -v direnv > /dev/null
	eval (direnv hook fish)
end

if test -x $HOME/.rakubrew/bin/rakubrew
	$HOME/.rakubrew/bin/rakubrew init Fish | source
end

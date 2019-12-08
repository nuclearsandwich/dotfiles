eval (dircolors -c ~/.dircolors | sed 's/>&\/dev\/null$//')

if test -z "$SSH_ENV"
	setenv SSH_ENV $HOME/.ssh/environment
end

if not __ssh_agent_is_started
	__ssh_agent_start
end

if test -x $HOME/.rakudobrew/bin/rakudobrew
	$HOME/.rakudobrew/bin/rakudobrew init Fish | source
end


# Use rbenv instead of chruby for meow.
#source "$HOME/.config/fish/functions/chruby_auto.fish"
if which rbenv > /dev/null ^ /dev/null
	status --is-interactive; and source (rbenv init -|psub)
end
if which nodenv > /dev/null ^ /dev/null
	status --is-interactive; and source (nodenv init -|psub)
end

if which direnv > /dev/null ^ /dev/null
	eval (direnv hook fish)
end


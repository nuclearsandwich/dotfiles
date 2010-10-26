require 'rubygems'

begin
	require 'hirb'
	extend Hirb::Console
rescue LoadError => err
	warn "Couldn't load Hirb: #{err}"
end

begin
	require 'interactive_editor'
rescue LoadError => err
	warn "Couldn't load Interactive Editor: #{err}"
end


begin
	require 'wirble'
	Wirble.init
	Wirble.colorize
rescue LoadError => err
	warn "Couldn't load Wirble: #{err}"
end

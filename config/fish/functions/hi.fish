set -x HALP_DEPENDENCIES elasticsearch redis mysql memcached nginx
set -x GITHUB_DEPENDENCIES elasticsearch redis mysql memcached nginx

function hi --description 'Start up a local dev environment.'
	switch $argv[1]
	case halp
		sudo systemctl start $HALP_DEPENDENCIES
	case github
		sudo systemctl start $GITHUB_DEPENDENCIES
	end
end

function bye --description 'Spin down a local dev environment'
	switch $argv[1]
	case halp
		sudo systemctl stop $HALP_DEPENDENCIES
	case github
		sudo systemctl stop $GITHUB_DEPENDENCIES
	end
end

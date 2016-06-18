set -x HALP_DEPENDENCIES elasticsearch redis mysqld memcached nginx

function hi --description 'Start up a local dev environment.'
	switch $argv[1]
	case halp
		sudo systemctl start $HALP_DEPENDENCIES
	end
end

function bye --description 'Spin down a local dev environment'
	switch $argv[1]
	case halp
		sudo systemctl stop $HALP_DEPENDENCIES
	end
end

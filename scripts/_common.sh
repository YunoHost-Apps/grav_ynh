#!/bin/bash

#=================================================
# COMMON VARIABLES
#=================================================

# Version numbers
YNH_PHP_VERSION="7.3"

# dependencies used by the app
extra_php_dependencies="php${YNH_PHP_VERSION}-zip php${YNH_PHP_VERSION}-mbstring php${YNH_PHP_VERSION}-curl php${YNH_PHP_VERSION}-dom php${YNH_PHP_VERSION}-gd php${YNH_PHP_VERSION}-xml php${YNH_PHP_VERSION}-ldap"

#=================================================
# EXPERIMENTAL HELPERS
#=================================================

# Execute a command as another user
# usage: exec_as USER COMMAND [ARG ...]
exec_as() {
	local USER=$1
	shift 1

	if [[ $USER = $(whoami) ]]
	then
		eval $@
	else
		sudo -u "$USER" $@
	fi
}

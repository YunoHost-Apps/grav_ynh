#!/bin/bash

#=================================================
# COMMON VARIABLES
#=================================================

# Version numbers
YNH_PHP_VERSION="7.3"

# dependencies used by the app
pkg_dependencies="php${YNH_PHP_VERSION}-zip php${YNH_PHP_VERSION}-mbstring php${YNH_PHP_VERSION}-curl php${YNH_PHP_VERSION}-dom php${YNH_PHP_VERSION}-gd php${YNH_PHP_VERSION}-xml php${YNH_PHP_VERSION}-ldap"

#=================================================
# EXPERIMENTAL HELPERS
#=================================================

ynh_system_user_add_group() {
    # Declare an array to define the options of this helper.
    local legacy_args=uhs
    local -A args_array=([u]=username= [g]=groups=)
    local username
    local groups

    # Manage arguments with getopts
    ynh_handle_getopts_args "$@"
    groups="${groups:-}"

	local group
	for group in $groups; do
		usermod -a -G "$group" "$username"
	done
}


ynh_system_user_del_group() {
    # Declare an array to define the options of this helper.
    local legacy_args=uhs
    local -A args_array=([u]=username= [g]=groups=)
    local username
    local groups

    # Manage arguments with getopts
    ynh_handle_getopts_args "$@"
    groups="${groups:-}"

	local group
	for group in $groups; do
		gpasswd -d "$username" "$group"
	done
}

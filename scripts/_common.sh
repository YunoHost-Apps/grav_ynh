#!/bin/bash

#=================================================
# COMMON VARIABLES
#=================================================

php_dependencies="php$YNH_DEFAULT_PHP_VERSION-zip php$YNH_DEFAULT_PHP_VERSION-mbstring php$YNH_DEFAULT_PHP_VERSION-curl php$YNH_DEFAULT_PHP_VERSION-dom php$YNH_DEFAULT_PHP_VERSION-gd php$YNH_DEFAULT_PHP_VERSION-xml php$YNH_DEFAULT_PHP_VERSION-ldap"

# dependencies used by the app (must be on a single line)
pkg_dependencies="$php_dependencies"

#=================================================
# PERSONAL HELPERS
#=================================================

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

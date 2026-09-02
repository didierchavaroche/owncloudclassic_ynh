#!/bin/bash

#=================================================
# COMMON VARIABLES AND CUSTOM HELPERS
#=================================================

# Get the actual ownCloud version from the source
app_version="11.0.0"
#$(cat "$install_dir/version.php" | grep "OC_Version" | cut -d'"' -f4)

# Define the PHP version to use
php_version="8.3"

# Define the occ command
exec_occ() {
    ynh_exec_as_app php "$install_dir/owncloud/occ" "$@"
}

is_url_handled() {
    status=$(curl -s -o /dev/null -w "%{http_code}" $1)
    if [[ $status == "200" ]] then
        return 0
    else
        return 1
    fi
}
#!/bin/bash

#=================================================
# COMMON VARIABLES AND CUSTOM HELPERS
#=================================================

# Load YunoHost helpers
source /usr/share/yunohost/helpers

# Get the actual ownCloud version from the source
app_version="10.16.3"
#$(cat "$install_dir/version.php" | grep "OC_Version" | cut -d'"' -f4)

# Define the PHP version to use
php_version="8.3"

# Define the occ command
exec_occ() {
    sudo -u $app php"$php_version" "$install_dir/occ" "$@"
}

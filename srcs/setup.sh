#!/bin/bash

echo -e "\n \t\t\e[92mSTARTING SETUP\e[0m"

TEMP_DIR="/tmp"
APP_PATH="/var/www/localhost"

mkdir $APP_PATH

#run services setup scripts and then run services
$TEMP_DIR/ssl/ssl_setup.sh
$TEMP_DIR/nginx/nginx_setup.sh
$TEMP_DIR/mysql/mysql_setup.sh
$TEMP_DIR/php_my_admin/phpmyadmin_setup.sh
$TEMP_DIR/wordpress/wordpress_setup.sh

# start container's shell
bash
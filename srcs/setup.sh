#!/bin/bash

TEMP_DIR="/tmp"
APP_PATH="/var/www/localhost"

mkdir $APP_PATH

$TEMP_DIR/ssl/ssl_setup.sh
$TEMP_DIR/nginx/nginx_setup.sh
$TEMP_DIR/mysql/mysql_setup.sh
$TEMP_DIR/php_my_admin/phpmyadmin_setup.sh
$TEMP_DIR/wordpress/wordpress_setup.sh

bash
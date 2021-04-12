#!/bin/bash

TMP_PATH="/tmp/php_my_admin"
APP_PATH="/var/www/localhost"
PHPMA_PATH="/var/www/localhost/phpmyadmin"
PMA_DISTR="phpMyAdmin-5.1.0-english.tar.gz"


mkdir $PHPMA_PATH

# tar - Creates, maintains, modifies, and extracts files that are archived in the tar format.
# x - Extract files from an archive. 
# v - Operate verbosely.
# f - Use archive file (or device) ARCHIVE.
# -C DIR - Change to directory DIR before performing any operations.
# > /dev/null - https://linuxhint.com/what_is_dev_null/
tar xvf $TMP_PATH/$PMA_DISTR -C $APP_PATH > /dev/null
rm -rf PMA_DISTR
mv $APP_PATH/phpMyAdmin-5.1.0-english/* $PHPMA_PATH
rm -r $APP_PATH/phpMyAdmin-5.1.0-english

cp $TMP_PATH/config.inc.php $PHPMA_PATH

service php7.3-fpm start
#!/bin/bash

WORDPRESS_DISTR="wordpress-5.7.tar.gz"
WORDPRESS_PATH="/var/www/localhost"
TMP_PATH="/tmp/wordpress"

# tar - Creates, maintains, modifies, and extracts files that are archived in the tar format.
# x - Extract files from an archive. 
# v - Operate verbosely.
# f - Use archive file (or device) ARCHIVE.
# -C DIR - Change to directory DIR before performing any operations.
# > /dev/null - https://linuxhint.com/what_is_dev_null/

tar xf $TMP_PATH/$WORDPRESS_DISTR -C $WORDPRESS_PATH
rm -rf $WORDPRESS_DISTR

# https://www.digitalocean.com/community/tutorials/how-to-install-wordpress-with-lamp-on-debian-10
# Start by giving ownership of all the files to the www-data user and group. 
# This is the user that the nginx web server runs as, and nginx will need to be able to read and write WordPress files in order to serve the website and perform automatic updates.
# chown - change the ownership and group ownership of a files/directories.
# -R - apply ownership recursively on all files and directories under a given directory.
# If the owner is followed by a colon (:) and a group name (without spaces), the group name is changed as well.

chown -R www-data:www-data  $WORDPRESS_PATH

cp $TMP_PATH/wp-config.php $WORDPRESS_PATH/wordpress

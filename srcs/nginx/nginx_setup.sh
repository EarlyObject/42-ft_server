#!/bin/bash

SITES_AVAILABLE="/etc/nginx/sites-available"
SITES_ENABLED="/etc/nginx/sites-enabled"
TMP_DIR="/tmp/nginx"

service nginx start

#remove the default symlink in sites-enabled
rm -rf $SITES_ENABLED/default

#copy server block file
cp $TMP_DIR/nginx.conf $SITES_AVAILABLE/localhost

#Activate configuration by linking to the config file from Nginx’s sites-enabled directory
ln -s $SITES_AVAILABLE/localhost $SITES_ENABLED/localhost

# Check if nginx is working properly
nginx -t

# Restart Nginx (to apply all changes made)
service nginx restart
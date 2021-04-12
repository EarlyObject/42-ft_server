#!/bin/bash

# To change the text in files under Linux/Unix use sed command: sed -i 's/old-text/new-text/g' input.txt
# s - The s is the substitute command of sed for find and replace
# -i extension. Edit files in-place similarly to -I, but treat each file independently from other files.
# g - perform a global match (find all matches rather than stopping after the first match).

NGINX_CONF_FILE=/etc/nginx/sites-available/localhost
sed -i "s/autoindex on;/autoindex off;/g" $NGINX_CONF_FILE

echo "Autoindex option is now set to OFF"

service nginx restart
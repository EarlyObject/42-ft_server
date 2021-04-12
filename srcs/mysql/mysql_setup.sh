#!/bin/bash

echo -e "\n \t\t\e[92mMySQL SETUP\e[0m"
USER=user

service mysql start

#set username and password for root user
# -e - execute
mysql -e "CREATE USER '$USER' IDENTIFIED BY '$USER';"
mysql -e "CREATE DATABASE wordpress;"
mysql -e "CREATE DATABASE phpmyadmin;"
mysql -e "GRANT ALL PRIVILEGES ON *.* TO '$USER';"
# Flush the privileges to ensure that they are saved and available in the current session:
mysql -e "FLUSH PRIVILEGES;"
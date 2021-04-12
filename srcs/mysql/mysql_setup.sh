#!/bin/bash

USER=user

service mysql start

#set username and password for root user

mysql -e "CREATE USER '$USER' IDENTIFIED BY '$USER';"
mysql -e "CREATE DATABASE wordpress;"
mysql -e "CREATE DATABASE phpmyadmin;"
mysql -e "GRANT ALL PRIVILEGES ON *.* TO '$USER';"
#mysql wordpress < wordpress.sql
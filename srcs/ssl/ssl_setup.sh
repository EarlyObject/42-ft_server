#!/bin/bash

echo STARTING SSL SETUP
SSL_PATH=/etc/nginx/ssl

mkdir $SSL_PATH
chmod -R 600 $SSL_PATH

# https://linuxize.com/post/creating-a-self-signed-ssl-certificate/
# openssl req - create a new Self-Signed SSL Certificate.
# -newkey rsa:2048 - creates a new certificate request and 2048 bit RSA key.
# -x509 - creates a X.509 Certificate.
# -sha256 - use 265-bit SHA (Secure Hash Algorithm).
# -days 3650 - The number of days to certify the certificate for.
# -nodes - Creates a key without a passphrase.
# -out example.crt - Specifies the filename to write the newly created certificate to.
# -keyout example.key - Specifies the filename to write the newly created private key to.
# -subj - if you want to generate a self-signed SSL certificate without being prompted for any question.
# C= - Country name. The two-letter ISO abbreviation.
# ST= - State or Province name.
# L= - Locality Name. The name of the city where you are located.
# O= - The full name of your organization.
# OU= - Organizational Unit.
# CN= - The fully qualified domain name.

openssl req -newkey rsa:2048 \
			-x509 \
			-sha256 \
			-days 3650 \
			-nodes \
			-out $SSL_PATH/localhost.crt \
			-keyout $SSL_PATH/localhost.key \
			-subj "/C=ES/ST=Madrid/L=Madrid/O=42/OU=asydykna/CN=localhost"

echo SSL SETUP FINISHED

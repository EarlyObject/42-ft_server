FROM debian:buster

ENV AUTOINDEX on

#update package list and install services
RUN apt-get update -y && apt-get install\
	nano -y \
	nginx -y \
	mariadb-server -y \
	php7.3-fpm php7.3-mysql -y\
	openssl -y

EXPOSE 80 443

COPY srcs /tmp/

CMD bash ./tmp/setup.sh
FROM debian:buster

#update package list and install services
# -y - automatic yes to prompts; 
RUN apt-get update -y && apt-get install \
	apt-utils -y \
	curl -y \
	mariadb-server -y \
	nano -y \
	nginx -y \
	openssl -y \
	php7.3-fpm php7.3-mysql php7.3-xml php7.3-cli php7.3-mbstring -y \
	&& apt-get clean \
	&& rm -rf /var/lib/apt/lists/*

EXPOSE 80 443

COPY srcs /tmp/

CMD bash ./tmp/setup.sh
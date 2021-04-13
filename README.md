<h1 align="center">
	ft_server
</h1>
<p align="center">
<b><i> :information_source: This project is part of my 42 programming academy cursus.</i></b><br>
<p>
<p align="center">
	<img alt="GitHub code size in bytes" src="https://img.shields.io/github/languages/code-size/EarlyObject/42-ft_server?color=blueviolet" />
	<img alt="Number of lines of code" src="https://img.shields.io/tokei/lines/github/EarlyObject/42-ft_server?color=blueviolet" />
	<img alt="Code language count" src="https://img.shields.io/github/languages/count/EarlyObject/42-ft_server?color=blue" />
	<img alt="GitHub top language" src="https://img.shields.io/github/languages/top/EarlyObject/42-ft_server?color=blue" />
	<img alt="GitHub last commit" src="https://img.shields.io/github/last-commit/EarlyObject/42-ft_server?color=brightgreen" />	
</p>
<p align="center">
<img alt="PHP" src="https://img.shields.io/badge/PHP-777BB4?style=for-the-badge&logo=php&logoColor=white" />
<img alt="Shell script" src="https://img.shields.io/badge/Shell_Script-121011?style=for-the-badge&logo=gnu-bash&logoColor=white" />
<img alt="Built with love" src="http://ForTheBadge.com/images/badges/built-with-love.svg" />
</p>

<h3 align="center">
	<a href="#gear-about">About</a>
	<span> · </span>
	<a href="#page_with_curl-introduction">Introduction</a>
	<span> · </span>
	<a href="#warning-general-instructions">General instructions</a>
	<span> · </span>
	<a href="#rotating_light-mandatory-part">Mandatory part</a>
	<span> · </span>
	<a href="#bricks-project-structure">Project structure</a>
	<span> · </span>
	<a href="#technologist-usage">Usage</a>
	<span> · </span>
	<a href="#link-links">Links</a>
	<span> · </span>
</h3>

***

## :gear: About
>This is a System Administration subject. You will discover Docker and you will set up your first web server.  
>This project consists of setting up a LEMP stack (Linux, NGINX web server, MySQL, phpMyAdmin) and WordPress content management system and SSL certificate in a single Docker container.  

## :page_with_curl: Introduction
This topic is intended to introduce you to system administration. It will make you aware of the importance of using scripts to automate your tasks. For that, you will discover the "docker" technology and use it to install a complete web server.  
This server will run multiples services: Wordpress, phpMyAdmin, and a SQL database.

## :warning: General instructions
• You must place all the necessary files for the configuration of your server in a folder called srcs.  
• Your Dockerfile file should be at the root of your repository. It will build your container. You can’t use docker-compose.  
• All the necessary files for your WordPress website should be in the folder srcs.

## :rotating_light: Mandatory part
• You must set up a web server with Nginx, in only one docker container. The container OS must be debian buster.  
• Your web server must be able to run several services at the same time. The services will be a WordPress website, phpMyAdmin and MySQL. You will need to make sure your SQL database works with the WordPress and phpMyAdmin.  
• Your server should be able to use the SSL protocol.  
• You will have to make sure that, depending on the url, your server redirects to the correct website.  
• You will also need to make sure your server is running with an autoindex that must be able to be disabled.
***
## :bricks: Project structure

`@root`

* [**Dockerfile**](Dockerfile) - contains instructions to build web server's docker image.  

`@/srcs/`

*	[**setup.sh**](srcs/setup.sh) - script for setup configuration: installs and configures all requested services.  

`@/srcs/autoindex`

*	[**autoindex_on.sh**](srcs/autoindex/autoindex_on.sh) - script for turning autoindex on.  
*	[**autoindex_off.sh**](srcs/autoindex/autoindex_off.sh) - script for turning autoindex off.  

`@/srcs/mysql`

*	[**mysql_setup.sh**](srcs/mysql/mysql_setup.sh) - script for installing and configuring MariaDB SQL.  

`@/srcs/nginx`

*	[**nginx_setup.sh**](srcs/nginx/nginx_setup.sh) - script for configuring and starting NGINX server.  
*	[**nginx.conf**](srcs/nginx/nginx.conf) - NGINX configuration file.  

`@/srcs/phpmyadmin`

*	[**config.inc.php**](srcs/php_my_admin/config.inc.php) - phpMyAdmin configuration file.  
*	[**phpmyadmin_setup.sh**](srcs/php_my_admin/phpmyadmin_setup.sh) - script for configuring and starting phpMyAdmin tool.  
* [**phpMyAdmin-5.1.0-english.tar.gz**](srcs/php_my_admin/phpMyAdmin-5.1.0-english.tar.gz) - compressed files for phpMyAdmin installation.  

`@/srcs/ssl`
*	[**ssl_setup.sh**](srcs/ssl/ssl_setup.sh) - script for installing SSL certificate on NGINX server.  

`@/srcs/wordpress`
*	[**wordpress_setup.sh**](srcs/wordpress/wordpress_setup.sh) - script for installing Wordpres CMS.  
*	[**wordpress-5.7.tar.gz**](srcs/wordpress/wordpress-5.7.tar.gz) - compressed files for Wordpress installation.  
*	[**wp-config.php**](srcs/wordpress/wp-config.php) - Wordpress configuration file.

`@/subject/`
*	[**ft_server.en.subject.pdf**](subject/ft_server.en.subject.pdf) - ft_server subject in english.  
*	[**ft_server.es.subject.pdf**](subject/ft_server.es.subject.pdf) - ft_server subject in spanish.  
***
## :technologist: Usage
This project requires [Docker](https://www.docker.com) to run.  
To check if you have Docker installed, run in your shell `$ docker --version`

1.	`git clone https://github.com/EarlyObject/42-ft_server.git`  
2.	Build Docker image: `docker build -t ft_server .`  
3.	Create and run new Docker container: `docker run --name ft_server --rm  -it  -p 80:80 -p 443:443 ft_server`  
4.	Open a web browser and navigate to the localhost.  
5.	Run Wordpress installation wizard using credentials from [**wp-config.php**](srcs/wordpress/wp-config.php) an [**mysql_setup.sh**](srcs/mysql/mysql_setup.sh)  

You can find detailed explanaiton of used commands in each script and configuration file.  

## :link: Links
[How to Install LEMP Stack on Debian 10 Buster Server/Desktop](https://www.linuxbabe.com/debian/install-lemp-stack-debian-10-buster)

[Creating a Self-Signed SSL Certificate](https://linuxize.com/post/creating-a-self-signed-ssl-certificate/)

[How To Install phpMyAdmin From Source on Debian 10](https://www.digitalocean.com/community/tutorials/how-to-install-phpmyadmin-from-source-debian-10)

[How to Install WordPress with LAMP on Debian 10](https://www.digitalocean.com/community/tutorials/how-to-install-wordpress-with-lamp-on-debian-10)
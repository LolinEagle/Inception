FROM		debian:buster

# APT ##########################################################################
RUN			apt update
RUN			apt upgrade
RUN			apt install -y curl
RUN			apt install -y vim

# WORDPRESS ####################################################################
RUN			apt-get -y install wget
RUN			apt-get -y install php7.3 php-fpm php-mysql mariadb-client
RUN			wget https://fr.wordpress.org/wordpress-6.0-fr_FR.tar.gz -P /var/www
RUN			cd /var/www && tar -xzf wordpress-6.0-fr_FR.tar.gz
RUN			rm /var/www/wordpress-6.0-fr_FR.tar.gz
RUN			chown -R root:root /var/www/wordpress

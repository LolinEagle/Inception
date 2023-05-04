FROM		debian:buster
RUN			apt update -y && apt upgrade -y
RUN			apt install -y curl vim wget php7.3 php-fpm php-mysql mariadb-client
RUN			wget https://fr.wordpress.org/wordpress-6.2-fr_FR.tar.gz -P /var/www
RUN			cd /var/www && tar -xzf wordpress-6.2-fr_FR.tar.gz
RUN			rm /var/www/wordpress-6.2-fr_FR.tar.gz
RUN			chown -R root:root /var/www/wordpress

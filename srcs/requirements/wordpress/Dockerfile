FROM		debian:buster
RUN			apt update -y && apt upgrade -y
RUN			apt install -y curl vim wget php7.3 php-fpm php-mysql mariadb-client
RUN			wget https://fr.wordpress.org/wordpress-6.2-fr_FR.tar.gz -P /var/www
RUN			cd /var/www && tar -xzf wordpress-6.2-fr_FR.tar.gz
RUN			rm /var/www/wordpress-6.2-fr_FR.tar.gz
RUN			chown -R root:root /var/www/wordpress
RUN			wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN			chmod +x wp-cli.phar
RUN			mv wp-cli.phar /usr/local/bin/wp
COPY		conf/wp_conf.sh /wp_conf.sh
ENTRYPOINT	["bash", "/wp_conf.sh"]

FROM		debian:buster
RUN			apt update -y && apt upgrade -y && apt install -y curl vim wget
RUN			apt install -y php7.3 php-fpm php7.3-cli php-mysql mariadb-client
RUN			wget https://fr.wordpress.org/wordpress-6.2-fr_FR.tar.gz -P /var/www
RUN			cd /var/www && tar -xzf wordpress-6.2-fr_FR.tar.gz
RUN			rm /var/www/wordpress-6.2-fr_FR.tar.gz
RUN			chown -R root:root /var/www/wordpress
COPY		conf/www.conf /etc/php/7.3/fpm/pool.d/
RUN			wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN			chmod +x wp-cli.phar
RUN			mv wp-cli.phar /usr/local/bin/wp
COPY		conf/wp_conf.sh /wp_conf.sh
ENTRYPOINT	["bash", "/wp_conf.sh"]

FROM		debian:buster
RUN			apt update  -y
RUN			apt upgrade -y
RUN			apt install -y nginx
RUN			apt install -y curl
RUN			apt install -y vim
RUN			mkdir -p /etc/nginx/ssl
RUN			apt install -y openssl
RUN			openssl req -x509 -nodes -out /etc/nginx/ssl/inception.crt \
			-keyout /etc/nginx/ssl/inception.key \
			-subj "/C=FR/ST=IDF/L=Paris/O=42/OU=42/CN=frrusso.42.fr/UID=frrusso"
RUN			mkdir -p /var/run/nginx
COPY		conf/nginx.conf /etc/nginx/nginx.conf
RUN			chmod 755 /var/www/html
RUN			chown -R www-data:www-data /var/www/html
CMD			[ "nginx", "-g", "daemon off;" ]

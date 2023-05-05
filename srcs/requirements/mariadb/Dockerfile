FROM		debian:buster
RUN			apt update -y && apt upgrade -y
RUN			apt install -y curl vim mariadb-server
COPY		conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf
COPY		conf/mariadb.sh /mariadb.sh
ENTRYPOINT	["bash", "/mariadb.sh"]

FROM		debian:buster
RUN			apt update  -y
RUN			apt upgrade -y
RUN			apt install -y mariadb-server
RUN			apt install -y curl
RUN			apt install -y vim
COPY		conf/mariadb.conf /etc/mysql/mariadb.conf.d/50-server.cnf
COPY		conf/mariadb.sh /mariadb.sh
ENTRYPOINT	["bash", "/mariadb.sh"]

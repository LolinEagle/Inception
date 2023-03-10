FROM		debian:buster

# APT ##########################################################################
RUN			apt update
RUN			apt upgrade
RUN			apt-get install -y mariadb-server
RUN			apt install -y curl
RUN			apt install -y vim

# MARIADB ######################################################################
COPY		conf/mariadb.conf /etc/mysql/mariadb.conf.d/50-server.cnf
COPY		conf/mariadb.sh /mariadb.sh
ENTRYPOINT	["bash", "/mariadb.sh"]

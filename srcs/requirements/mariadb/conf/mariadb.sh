if [ ! -f "/var/lib/mysql/file_flag_mdb_done" ]; then
	service mysql start
	sleep 3
	while [ ! -e /var/run/mysqld/mysqld.sock ]; do
		sleep 1
	done
	mysql << EOF
CREATE DATABASE IF NOT EXISTS \`${SQL_DATABASE}\`;
CREATE USER IF NOT EXISTS \`${SQL_USER}\`@\`localhost\` IDENTIFIED BY '${SQL_PASSWORD}';
GRANT ALL PRIVILEGES ON \`${SQL_DATABASE}\`.* TO \`${SQL_USER}\`@'%' IDENTIFIED BY '${SQL_PASSWORD}';
ALTER USER 'root'@'localhost' IDENTIFIED BY '${SQL_ROOT_PASSWORD}';
FLUSH PRIVILEGES;
EOF
	sleep 5
	mysqladmin -uroot -p$SQL_ROOT_PASSWORD shutdown
	touch /var/lib/mysql/file_flag_mdb_done
else
	echo "file_flag_mdb_done is alredy done."
fi

exec mysqld

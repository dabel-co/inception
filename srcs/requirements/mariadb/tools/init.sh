#!/bin/sh
sed -i "s/\$MYSQL_ROOT_PASSWORD/$MYSQL_ROOT_PASS/" /etc/init.sql
sed -i "s/\$MYSQL_USER/$MYSQL_USER/" /etc/init.sql
sed -i "s/\$MYSQL_PASSWORD/$MYSQL_PASS/" /etc/init.sql
exec mariadbd --no-defaults --user=root --datadir=/var/lib/mysql --init-file=/etc/init.sql
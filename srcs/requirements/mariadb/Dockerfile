FROM alpine:3.18
RUN apk -U upgrade && apk add mariadb
RUN mariadb-install-db --user=root --datadir=/var/lib/mysql
RUN mkdir /run/mysqld/
COPY /conf/init.sql /tools/init.sh /etc/.
CMD ["sh", "/etc/init.sh"]
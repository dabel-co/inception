FROM alpine:3.18
RUN apk -U upgrade && apk add php php-phar php-fpm php-mysqli php-iconv mysql-client \
 php-json php-curl php-dom php-fileinfo php-mbstring php-openssl php-zip \
 php-tokenizer php-session
COPY /conf/php.conf /etc/php81/php-fpm.d/www.conf

WORKDIR /var/www/html

RUN wget https://wordpress.org/wordpress-6.5.2.tar.gz -O latest.tar.gz
RUN tar xzf latest.tar.gz && rm latest.tar.gz && mv wordpress/* . \
	&& rmdir wordpress
RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
 && chmod +x wp-cli.phar && mv wp-cli.phar /bin/wp

COPY /tools/init.sh /etc/init.sh

CMD ["sh", "/etc/init.sh"]

wp config create --dbname=wordpress --dbuser="$MYSQL_USER" \
	--dbpass="$MYSQL_PASS" --dbhost=mariadb --force

wp core is-installed || wp core install --url=dabel-co.42.fr --title="dabel-co" --admin_user="$WP_ADMIN" \
	--admin_password="$WP_ADMIN_PASS" --admin_email="$WP_ADMIN"@mail.org --skip-email

wp user create "$WP_USER" "$WP_USER"@student.42madrid.com --user_pass="$WP_USER_PASS"

exec php-fpm81 -F

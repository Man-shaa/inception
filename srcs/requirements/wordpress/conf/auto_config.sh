#!/bin/bash

sleep 10
test -f /etc/conf/php.conf && wp config create	--allow-root \
												--dbname=$SQL_DATABASE \
												--dbuser=$SQL_USER \
												--dbpass=$SQL_PASSWORD \
												--dbhost=mariadb:3306 --path='/var/www/wordpress' \
							&&  wp core install --url="msharifi.42.fr" --title="Inception" \
							--admin_user=$WP_ADMIN --admin_password=$WP_ADMIN_PASS \
							--admin_email=$WP_ADMIN_MAIL --allow-root
							wp user create $WP_USER $WP_USER_MAIL --user_pass=$WP_USER_PASS --allow-root
							wp config shuffle-salts --allow-root
							echo "Wordpress's installation complete"

if wp core is-installed --allow-root  ; then
	echo "Wordpress is installed and running"
	php-fpm7.3 -F -R
else
	echo "Wordpress's installation failed"
fi

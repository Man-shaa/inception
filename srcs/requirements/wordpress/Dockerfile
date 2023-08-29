FROM	debian:buster

RUN		apt update -y && apt upgrade -y

RUN		apt-get -y install wget

RUN		apt-get install -y php7.3	\
		php-fpm						\
		php-mysql					\
		mariadb-client

RUN		wget https://fr.wordpress.org/wordpress-6.2-fr_FR.tar.gz -P /var/www
RUN		cd /var/www && tar -xzf wordpress-6.2-fr_FR.tar.gz && rm wordpress-6.2-fr_FR.tar.gz

COPY	./conf/php.conf /etc/conf/php.conf

RUN     mkdir -p /run/php
RUN     chmod 755 /run/php

COPY	./conf/auto_config.sh /etc/conf/auto_config.sh

RUN		chmod +x /etc/conf/auto_config.sh

RUN		chown -R root:root /var/www/wordpress

RUN		wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN		chmod +x wp-cli.phar
RUN		mv wp-cli.phar /usr/local/bin/wp

EXPOSE	9000

CMD		["sh", "/etc/conf/auto_config.sh"]
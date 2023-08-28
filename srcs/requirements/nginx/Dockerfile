FROM		debian:buster

RUN			apt update -y && apt upgrade -y
RUN			apt install nginx -y
RUN			apt install openssl -y

RUN			mkdir -p /etc/nginx/ssl

RUN			openssl req -x509 -nodes -out /etc/nginx/ssl/inception.crt\
			-keyout /etc/nginx/ssl/inception.key -subj "/C=FR/ST=IDF/L=Paris/O=42/OU=42/CN=msharifi.42.fr/UID=msharifi"

RUN			mkdir -p /var/run/nginx

RUN			chmod 755 /var/www/html
RUN			chown -R www-data:www-data /var/www/html

COPY		./conf/nginx.conf /etc/nginx/conf

EXPOSE		443

# CMD			["nginx", "-g", "daemon off;"]		# NECESSAIRE MAIS NE DONNE PLUS DE PROMPT/IGNORE LES CMDS DANS TERMINAL NGINX
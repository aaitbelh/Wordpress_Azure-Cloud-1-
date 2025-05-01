FROM debian:buster

WORKDIR /var/www/html
RUN apt-get update && apt-get install curl -y \
	&& curl https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar -o /usr/bin/wp \
	&& chmod +x /usr/bin/wp \
	&& apt-get install php7.3-common php7.3-fpm php-mysql -y \
	&& apt-get install mariadb-client -y\
	&& apt-get install php-redis -y
COPY conf/www.conf /etc/php/7.3/fpm/pool.d/www.conf
COPY tools/wpscript.sh /

RUN service php7.3-fpm start && chmod +X /wpscript.sh

EXPOSE 9000
CMD ["bash", "/wpscript.sh"]


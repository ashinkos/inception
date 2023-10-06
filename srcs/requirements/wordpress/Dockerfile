FROM debian:bullseye
RUN apt-get update && \
    apt-get install -y \
        php7.4 \
        php-fpm \
        php-mysql \
        mariadb-client \
        nginx \
        curl \
        sendmail
        

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp
COPY ./tools/script.sh /script.sh
COPY ./tools/www.conf /etc/php/7.4/fpm/pool.d/www.conf
RUN chmod +x script.sh
RUN mkdir -p /run/php/
RUN mkdir -p /var/www/html/
#RUN mkdir -p /var/www/html/wordpress/
#ENTRYPOINT ["sh", "script.sh"]
CMD ["./script.sh"]

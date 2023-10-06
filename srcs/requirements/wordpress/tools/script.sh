#! /bin/bash

mkdir /var/www/html/wordpress
cd /var/www/html/wordpress/

sleep 3
#Downloading and extracting Wordpress core files to the current directory
wp core download --allow-root
# Creating the wp-config.php file using this command.
wp core config --dbname=${DB_NAME} --dbuser=${DB_USER} --dbpass=${DB_USER_PASSWORD} --dbhost=${DB_HOST} --allow-root
# Installing wordpress using the given environment variables to avoid showing the wordpress installation page everytime we run the containe
wp core install --url=${DOMAIN_NAME} --title=alaainception --admin_user=${WP_ADMIN} --admin_password=${WP_ADMIN_PASSWORD} --admin_email=${WP_ADMIN_EMAIL} --allow-root
# wp user create $WP_USER $WP_USER_EMAIL --role=author --user_pass=$WP_USER_PASSWORD --allow-root

php-fpm7.4 -F

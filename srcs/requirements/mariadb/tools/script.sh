#! /bin/bash

service mariadb start
#mysqladmin -u root -p password new_password

mariadb -u root -e "CREATE DATABASE IF NOT EXISTS ${DB_NAME};"
mariadb -u root -e "CREATE USER IF NOT EXISTS '${DB_USER}'@'%' IDENTIFIED BY '${DB_USER_PASSWORD}';"
mariadb -u root -e "GRANT ALL PRIVILEGES ON wordpress.* TO '${DB_USER}'@'%';"
mariadb -u root -e "FLUSH PRIVILEGES;"

service mariadb stop
# mysqld_safe
mariadbd
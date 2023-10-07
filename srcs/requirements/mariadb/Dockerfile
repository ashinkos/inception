FROM debian:bullseye
RUN apt-get update && apt-get upgrade -y && apt-get install mariadb-server -y

ARG DB_NAME DB_USER  DB_USER_PASSWORD DB_HOST

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf
COPY ./tools/script.sh ./script.sh
RUN chmod +x script.sh
CMD [ "./script.sh" ]
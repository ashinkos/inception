FROM debian:bullseye

RUN apt-get update && apt-get upgrade -y && apt-get install nginx -y

RUN apt-get install openssl -y

COPY ./conf/nginx.conf /etc/nginx/conf.d/

COPY ./tools/index.html /var/www/html/index.html
RUN mkdir -p /etc/nginx/ssl

RUN openssl req -x509 -nodes -keyout /etc/nginx/ssl/certificate.key -out /etc/nginx/ssl/certificate.crt -subj "/CN=alaa"

CMD [ "nginx", "-g", "daemon off;" ]

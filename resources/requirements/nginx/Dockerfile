FROM debian:buster

RUN apt-get update && apt-get upgrade -y && \
 apt-get install nginx=1.14.2-2+deb10u4 -y
COPY conf/default /etc/nginx/sites-available/default
RUN apt-get install openssl && \
    rm -rf /var/cache/apk/*
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -subj "/CN=aaitbelh" -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt

CMD ["nginx", "-g", "daemon off;"]


FROM debian:buster

RUN apt-get update && apt-get upgrade -y && apt-get install mariadb-server=1:10.3.36-0+deb10u2 -y  && \
	apt-get install mariadb-client=1:10.3.36-0+deb10u2 -y
COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf
COPY tools/script.sh /
ARG DB_NAME
ARG DB_USER
ARG DB_PASSWORD
ENV DB_NAME=${DB_NAME}
ENV DN_USER=${DB_USER}
ENV DB_PASSWORD=${DB_PASSWORD}
EXPOSE 3306:3306
RUN mkdir -p /run/mysqld/ && chown mysql:mysql /run/mysqld/ /var/lib/mysql
RUN chmod +x /script.sh && /script.sh
CMD ["mysqld"]
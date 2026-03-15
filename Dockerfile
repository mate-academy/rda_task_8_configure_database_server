FROM mysql:8.0-debian

RUN mkdir -p /data && chown -R mysql:mysql /data

ADD task.cnf /etc/mysql/conf.d/task.cnf

ENV MYSQL_DATA_DIR=/data
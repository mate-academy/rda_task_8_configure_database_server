FROM mysql:8.0

RUN mkdir -p /data && chown -R mysql:mysql /data

ADD task.cnf /etc/mysql/conf.d/task.cnf

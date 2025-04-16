FROM mysql:8.0-debian

ADD task.cnf /etc/mysql/conf.d/task.cnf

RUN mkdir -p /data /var/log/mysql && \
    chown mysql:mysql /data /var/log/mysql
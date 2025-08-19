FROM mysql:8.0-debian

ADD task.cnf /etc/mysql/conf.d/task.cnf

VOLUME /data

EXPOSE 3000

CMD ["mysqld"]
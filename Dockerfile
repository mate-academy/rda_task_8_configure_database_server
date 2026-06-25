FROM mysql:8.0-debian

EXPOSE 3000

ADD task.cnf /etc/mysql/conf.d/task.cnf

FROM mysql:8.0-debian

ADD task.cnf /etc/mysql/mysql.conf.d/task.cnf

FROM --platform=linux/amd64 mysql:8.0-debian

ADD task.cnf /etc/mysql/conf.d/task.cnf

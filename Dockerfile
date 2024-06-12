FROM --platform=linux/x86_64 mysql:8.0-debian

ADD task.cnf /etc/mysql/conf.d/task.cnf

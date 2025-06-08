FROM mysql:8.0

# Конфіг
COPY task.cnf /etc/mysql/conf.d/task.cnf

# Права
RUN chmod 644 /etc/mysql/conf.d/task.cnf

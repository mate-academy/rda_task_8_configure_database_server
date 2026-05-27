FROM mysql:8.0

COPY task.cnf /etc/mysql/conf.d/task.cnf

RUN mkdir -p /data && chown -R root:root /data

EXPOSE 3000

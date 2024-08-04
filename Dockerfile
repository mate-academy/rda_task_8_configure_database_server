FROM mysql:8.0-debian

ADD task.cnf /etc/mysql/conf.d/task.cnf

USER root

RUN chown -R root:root /var/lib/mysql /var/run/mysqld
RUN chmod 755 /var/lib/mysql /var/run/mysqld

# Expose the new port
EXPOSE 3000

CMD ["mysqld"]

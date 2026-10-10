# MySQL Custom Configuration and Local Validation

## 1. How to Build and Run Local Docker Test
To ensure that your custom MySQL configuration file `task.cnf` is syntactically correct and doesn't break the database engine startup, execute the following commands in your repository root folder:

```bash
# 1. Build a local test Docker image incorporating your task.cnf
docker build -t mysql-test:latest .

# 2. Start a container detached from the newly built image
docker run --name mysql -e MYSQL_ROOT_PASSWORD=P@ssw0rd -d mysql-test:latest

# 3. Follow the runtime log stream to verify successful database initialization on port 3000
docker logs -f mysql
```

## 2. How to Validate Settings
If the container starts and runs without any crash loop errors, you can verify configuration inside the engine process:
```bash
docker exec -it mysql mysql -pP@ssw0rd -e "SHOW VARIABLES WHERE Variable_name IN ('port', 'datadir', 'slow_query_log', 'slow_query_log_file');"
```

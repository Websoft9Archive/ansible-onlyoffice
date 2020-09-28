# Troubleshooting

If you're having trouble with running ONLYOFFICE, here is a quick guide to solve most common problems.

> Most faults about the Instance is closely related to the Instance provider, Cloud Platform. Provided you're sure the fault is caused by Cloud Platform, refer to [Cloud Platform Documentation](https://support.websoft9.com/docs/faq/tech-instance.html).

#### How can I check the error logs?

Logs document path: `/data/logs`. You can search keywords **Failed** or **error** to check error.

#### Can't start ONLYOFFICE service?

Insufficient disk space and memory, incorrect configuration file may cause the failure to start the service. 

It is recommended to first check through the command.

```shell
# check disk
df -lh

# check memory
free -lh

# check docker container onlyofficecommunityserver
sudo docker inspect onlyofficecommunityserver
sudo docker logs onlyofficecommunityserver
```

#### Can't start ONLYOFFICE after changing password of MySQL?

You need to modify the corresponding database password */data/wwwroot/onlyoffice/docker-compose.yml* in ONLYOFFICE docker-compose document, and run the following commands:

```
cd /data/wwwroot/onlyoffice
docker-compose down -v
docker-compose up -d
```

#### ONLYOFFICE displays 502 Bad Gateway?

First run the command `sudo docker logs onlyofficecommunityserver` to check if there's error logs.  

Generally, it's caused by the lack of file permission or the failure of data connection.

#### Can't run ONLYOFFICE after re-installing database?

ONLYOFFICE has strict rules for database configuration, ensure you meet the following requirements:

```
echo "[mysqld]
sql_mode = 'NO_ENGINE_SUBSTITUTION'
max_connections = 1000
max_allowed_packet = 1048576000
group_concat_max_len = 2048
log-error = /var/log/mysql/error.log" > /app/onlyoffice/mysql/conf.d/onlyoffice.cnf
```
# Troubleshooting

If you're having trouble with running ONLYOFFICE, here is a quick guide to solve most common problems.

> Most faults about the Instance is closely related to the Instance provider, Cloud Platform. Provided you're sure the fault is caused by Cloud Platform, refer to [Cloud Platform Documentation](https://support.websoft9.com/docs/faq/tech-instance.html).

#### How can I check the error logs?

You can find the keywords **Failed** or **error** from the logs directory: `/data/logs`

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

#### 修改 MySLQ 数据库密码之后 ONLYOFFICE 无法启动？

修改密码之后需要需改 ONLYOFFICE docker-compose 文件中对应的数据库密码： */data/wwwroot/onlyoffice/docker-compose.yml*，然后运行如下命令：

```
cd /data/wwwroot/onlyoffice
docker-compose down -v
docker-compose up -d
```

#### ONLYOFFICE 显示502错误？

首先通过命令 `sudo docker logs onlyofficecommunityserver`，查看是否有错误日志。  

一般是由文件权限不足或数据连接问题导致。

#### 重新安装了数据库导致 ONLYOFFICE 无法运行？

ONLYOFFICE 对数据库的配置有严格的要求，保证符合如下要求：

```
echo "[mysqld]
sql_mode = 'NO_ENGINE_SUBSTITUTION'
max_connections = 1000
max_allowed_packet = 1048576000
group_concat_max_len = 2048
log-error = /var/log/mysql/error.log" > /app/onlyoffice/mysql/conf.d/onlyoffice.cnf
```
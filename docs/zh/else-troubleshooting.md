# 故障处理

此处收集使用 ONLYOFFICE 过程中最常见的故障，供您参考

> 大部分故障与云平台密切相关，如果你可以确认故障的原因是云平台造成的，请参考[云平台文档](https://support.websoft9.com/docs/faq/zh/tech-instance.html)

#### 如何查看错误日志？

日志文件路径为：`/data/logs`。检索关键词 **Failed** 或者 **error** 查看错误

#### ONLYOFFICE 服务无法启动？

服务无法启动最常见的问题包括：磁盘空间不足，内存不足，配置文件错误。  
建议先通过命令进行排查  

```shell
# 查看磁盘空间
df -lh

# 查看内存使用
free -lh

# 查看容器服务
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
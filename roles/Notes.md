## ONLYOFFICE 发行版

OnlyOffice的产品家族比较复杂，根据官方的介绍，可以分为：

* ENTERPRISE EDITION：企业版
* COMMUNITY EDITION：开源版
* INTEGRATION EDITION：比如集成了 ownCloud 的版本
* DEVELOPER EDITION：开发者版本

其中每一个版本都是由：Community Server, Document Server, Mail Server 组成。  


COMMUNITY EDITION 是一个完全免费的版本。DEVELOPER EDITION 是一个适用于开发者的[收费版本](https://www.onlyoffice.com/zh/developer-edition-prices.aspx)。

## 安装方式

基于未来扩展的考虑，采用 Docker 安装较为合适

### 坑

1. MySQL 需要额外配置，否则创建的数据库内容报错
```
echo "[mysqld]
sql_mode = 'NO_ENGINE_SUBSTITUTION'
max_connections = 1000
max_allowed_packet = 1048576000
group_concat_max_len = 2048
log-error = /var/log/mysql/error.log" > /app/onlyoffice/mysql/conf.d/onlyoffice.cnf
```

2. 其他问题

如果 ONLYOFFICE 无法访问，查看其 Docker 日志一定有 error

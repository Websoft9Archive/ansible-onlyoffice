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


3. 为什么不使用官方自动安装脚本？

官方安装解读：官方提供了一个自动化安装脚本，运行之后可选容器和普通安装方式。

```bash
wget https://download.onlyoffice.com/install/opensource-install.sh
bash opensource-install.sh
```

OnlyOffice自动化安装包中，包含官方三个产品：Community Server, Document Server, Mail Server，另外其他基础环境的依赖（mysql,node.js等）也由此脚本完成。

遇坑过程：opensource-install.sh 启动后会询问 docker安装 or 普通安装，这个就涉及需要 expect 交互。但安装脚本耗时超过30分钟，问题就来了：

- 如果采用 Linux 系统的 expect 模块交互，等待时间太长，也没有结果。
- 如果采用 ansible 的expect交互，似乎此模块的时间要么设定，要么不限时间，若不限时间，在实践过程中等待3小时仍然没有结果

> 是不是 expect 不适合运行时间太长的脚本？

后面经过研究，发现OnlyOffice分别提供了RMP和DEB包的脚本，这两个安装过程中不再询问。

```bash
#onlyoffice 官方提供两种安装脚本
script_url_debian: https://download.onlyoffice.com/install/install-Debian.sh
script_url_redhat: https://download.onlyoffice.com/install/install-RedHat.sh
```

再到后来，发现直接使用Docker编排文件更为简单

---
sidebarDepth: 3
---

# 参数

ONLYOFFICE 预装包包含 ONLYOFFICE 运行所需一序列支撑软件（简称为“组件”），下面列出主要组件名称、安装路径、配置文件地址、端口、版本等重要的信息。

## 路径

### ONLYOFFICE

本项目中的 ONLYOFFICE 是由：ONLYOFFICE Community Server 和 ONLYOFFICE Document Server 组成，它们均基于 Docker 安装，并完成了集成。

#### ONLYOFFICE Community Server

ONLYOFFICE Community Server存储目录： */data/wwwroot/communityserver*  
ONLYOFFICE docker-compose 文件路径： */data/wwwroot/onlyoffice/docker-compose.yml*  
ONLYOFFICE 日志目录： */data/wwwroot/onlyoffice/communityserver/logs*

#### ONLYOFFICE Document Server

ONLYOFFICE Document Server存储目录： */data/apps/onlyofficedocumentserver*  
ONLYOFFICE docker-compose 文件路径： */data/apps/onlyofficedocumentserver/docker-compose.yml*  
ONLYOFFICE 日志目录： */data/apps/onlyofficedocumentserver/logs*

### Nginx

Nginx 虚拟主机配置文件：*/etc/nginx/conf.d/default.conf*  
Nginx 主配置文件： */etc/nginx/nginx.conf*  
Nginx 日志文件： */var/log/nginx*  
Nginx 伪静态规则目录： */etc/nginx/conf.d/rewrite*

### MySQL

MySQL 安装路径: */usr/local/mysql*  
MySQL 数据文件 */data/mysql*  
MySQL 配置文件: */etc/my.cnf*  

MySQL 可视化管理参考 [MySQL 管理](/zh/admin-mysql.md) 章节。

###  phpMyAdmin

phpMyAdmin 是一款可视化 MySQL 管理工具，在本项目中它基于 Docker 安装。  

phpMyAdmin directory：*/data/apps/phpmyadmin*  
phpMyAdmin docker compose file：*/data/apps/phpmyadmin/docker-compose.yml*  

## 端口号

在云服务器中，通过 **[安全组设置](https://support.websoft9.com/docs/faq/zh/tech-instance.html)** 来控制（开启或关闭）端口是否可以被外部访问。 

通过命令`netstat -tunlp` 看查看相关端口，下面列出可能要用到的端口：

| 类型 | 端口号 | 用途 |  必要性 |
| --- | --- | --- | --- |
| TCP | 80 | 通过 HTTP 访问 ONLYOFFICE | 必须 |
| TCP | 443 | 通过 HTTPS 访问 ONLYOFFICE | 可选 |
| TCP | 3306 | 远程连接 MySQL | 可选 |
| TCP | 9003 | 通过端口访问 ONLYOFFICE | 可选 |
| TCP | 9002 | ONLYOFFICE Document Server on Docker | 可选 |
| TCP | 9090 | phpMyAdmin on Docker | 可选 |

## 版本号

组件版本号可以通过云市场商品页面查看。但部署到您的服务器之后，组件会自动进行更新导致版本号有一定的变化，故精准的版本号请通过在服务器上运行命令查看：

```shell
# Check all components version
sudo cat /data/logs/install_version.txt

# Linux Version
lsb_release -a

# Nginx  Version
nginx -V

# Docker Version
docker -v

# ONLYOFFICE version
onlyofficectl status | grep ONLYOFFICE*

# Dokcer version
docker --version

# MySQL version
mysql -V

# ONLYOFFICE Community Server version
docker image inspect onlyoffice/communityserver  | grep onlyoffice.community.version | sed -n 1p
```
# Parameters

The ONLYOFFICE deployment package contains a sequence of software (referred to as "components") required for ONLYOFFICE to run. Below list the important information, such as the component name, installation directory path, configuration file path, port, version, etc.

## Path

### ONLYOFFICE

ONLYOFFICE in this project consists of ONLYOFFICE Community Server and ONLYOFFICE Document Server. Both are installed on Docker, and complete integrated.

#### ONLYOFFICE Community Server

ONLYOFFICE Community Server storage directory: */data/wwwroot/communityserver*  
ONLYOFFICE docker-compose document directory: */data/wwwroot/onlyoffice/docker-compose.yml*  
ONLYOFFICE logs directory： */data/wwwroot/onlyoffice/communityserver/logs*

#### ONLYOFFICE Document Server

ONLYOFFICE Document Server storage directory: */data/apps/onlyofficedocumentserver*  
ONLYOFFICE docker-compose docuemnt directory: */data/apps/onlyofficedocumentserver/docker-compose.yml*  
ONLYOFFICE logs directory: */data/apps/onlyofficedocumentserver/logs*

### Nginx

Nginx vhost configuration file: */etc/nginx/conf.d/default.conf*    
Nginx main configuration file: */etc/nginx/nginx.conf*   
Nginx logs file: */var/log/nginx*  
Nginx rewrite rules directory: */etc/nginx/conf.d/rewrite* 

### MySQL

MySQL installation directory: */usr/local/mysql*  
MySQL data directory: */data/mysql*  
MySQL configuration file: */etc/my.cnf*  

Web-GUI tool phpMyAdmin for MySQL, refer to the section:[MySQL Management](/admin-mysql.md). 

###  phpMyAdmin

phpMyAdmin is a Web-GUI tool for MySQL management, and it's installed on Docker in this project.

phpMyAdmin directory：*/data/apps/phpmyadmin*  
phpMyAdmin docker compose file：*/data/apps/phpmyadmin/docker-compose.yml*  

## Ports

Open or close ports by **[Security Group Setting](https://support.websoft9.com/docs/faq/tech-instance.html)** of your Cloud Server to decide whether the port can be accessed from Internet.  

You can run the cmd `netstat -tunlp` to check all related ports.  

Follows are the ports you may use:

| Name | Number | Use |  Necessity |
| --- | --- | --- | --- |
| TCP | 80 | HTTP to access ONLYOFFICE | Required |
| TCP | 443 | HTTPS to access ONLYOFFICE | Optional |
| TCP | 3306 | Remote access to MySQL | Optional |
| TCP | 9003 | Use port to access ONLYOFFICE | Optional |
| TCP | 9002 | ONLYOFFICE Document Server on Docker | Optional |
| TCP | 9090 | phpMyAdmin on Docker | Optional |

## Version

You can see the version on product pages of Marketplace. However, after being deployed to your server, the components will be updated automatically, resulting in a certain change in the version number. Therefore, run the command on the server to view the exact version number. 

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

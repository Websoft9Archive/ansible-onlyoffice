# Parameters

The OnlyOffice deployment package contains a sequence software (referred to as "components") required for Nextcloud to run. The important information such as the component name, installation directory path, configuration file path, port, version, etc. are listed below.

## Path

### OnlyOffice

OnlyOffice installation directory: */var/www/onlyoffice* 

### OnlyOffice DocumentServer
OnlyOffice DocumentServer installation directory: */var/www/onlyoffice/documentserver*  
OnlyOffice data directory: */var/www/onlyoffice/DocumentServerData*  

### Nginx

OnlyOffice on LEMP, the Web Server is Nginx    

Nginx vhost configuration file: */etc/nginx/sites-available/onlyoffice*  
Nginx main configuration file: */etc/nginx/nginx.conf*  
Nginx logs file: */var/log/nginx/*

### NodeJS
Module Path: /usr/lib/node_modules

### Mono
Mono configration file: */etc/mono/config*

### MYSQL

MySQL installation directory: */usr/local/mysql*  
MySQL data directory: */var/lib/mysql*  
MySQL configuration file: */etc/mysql/mysql.conf.d*    
MySQL Web Management URL: *http://Internet IP/phpmyadmin*, [get credential](/stack-accounts.md) 

### Redis

Redis configuration file: */etc/redis/redis.conf*  
Redis data directory: */var/lib/redis*  
Redis logs file: */var/log/redis/redis-server.log*

### Docker

OnlyOffice Document Server on Docker included in this stack

## Ports

You can control(open or shut down) ports by **[Security Group Setting](https://support.websoft9.com/docs/faq/zh/tech-instance.html)** of your Cloud Server whether the port can be accessed from Internet.

These ports should be opened for this application:

| Name | Number | Use |  Necessity |
| --- | --- | --- | --- |
| MySQL | 3306 | Remote connect MySQL | Optional |
| HTTP | 80 | HTTP requests for OnlyOffice | Required |
| HTTPS | 443 | HTTPS requests OnlyOffice | Optional |
| Docker | 8080 | OnlyOffice Document Server on Docker | Optional |

## Version

You can see the version from product page of Marketplace. However, after being deployed to your server, the components will be automatically updated, resulting in a certain change in the version number. Therefore, the exact version number should be viewed by running the command on the server:

```shell
# Linux Version
lsb_release -a

# PHP Version
php -v

# List Installed PHP Modules
php -m

# Apache version on Centos
httpd -v

# Apache version on Ubuntu
apache2 -v

# List Installed Apache Modules
apachectl -M

# Nginx version
nginx -v

# List Installed Nginx Modules
nginx -V

# MySQL version:
mysql -V

# Redis version
redis-server -v

# Dokcer:
docker --version
```
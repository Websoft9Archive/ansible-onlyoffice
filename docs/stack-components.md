# Parameters

The ONLYOFFICE deployment package contains a sequence of software (referred to as "components") required for ONLYOFFICE to run. Below list the important information, the component name, installation directory path, configuration file path, port, version, etc.

## Path

### ONLYOFFICE

ONLYOFFICE installation directory:  */data/onlyoffice*  
ONLYOFFICE logs directory:  */data/logs/onlyoffice*  

### Nginx

Nginx vhost configuration file: */etc/nginx/conf.d/default.conf*    
Nginx main configuration file: */etc/nginx/nginx.conf*   
Nginx logs file: */var/log/nginx*  
Nginx rewrite rules directory: */etc/nginx/conf.d/rewrite* 

### MySQL

MySQL installation directory: */usr/local/mysql*  
MySQL data directory: */data/mysql*  
MySQL configuration file: */etc/my.cnf*    
MySQL Web Management URL: *http://Internet IP/9panel*, get credential from [Username and Password](/stack-accounts.md)

## Ports

Open or close ports by **[Security Group Setting](https://support.websoft9.com/docs/faq/zh/tech-instance.html)** of your Cloud Server to decide whether the port can be accessed from Internet.
You can run the cmd `netstat -tunlp` to check all related ports.  
The following are the ports you may use.

| Name | Number | Use |  Necessity |
| --- | --- | --- | --- |
| HTTP | 8161 | HTTP requests for ONLYOFFICE Console| Required |
| HTTPS | 5672 | epmd | Optional |
| TCP | 55672 | Erlang distribution | Optional |


## Version

You can see the version on product pages at Marketplace. However, after being deployed to your server, the components will be updated automatically, resulting in a certain change in the version number. Therefore, run the command on the server to view the exact version number. 

```shell
# Check all components version
sudo cat /data/logs/install_version.txt

# Linux Version
lsb_release -a

# Nginx  Version
nginx -V

# Java version
java -v

# Docker Version
docker -v

# erlang  Version
yum info erlang
apt show erlang

# ONLYOFFICE version
onlyofficectl status | grep ONLYOFFICE*
```

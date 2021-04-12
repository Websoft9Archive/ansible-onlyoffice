# Update & Upgrade

Updates and upgrades are one of the maintenance tasks for system. Like buildings without maintenance for a long time, programs without upgrading will age faster, lose functionality until they are unavailable.

Get to know the differences between the terms **Update** and **Upgrade** ([Extended reading](https://support.websoft9.com/docs/faq/tech-upgrade.html#update-vs-upgrade)).
- Patching operating system is **Update**, while Ubuntu16.04 to Ubuntu18.04 is **Upgrade**. 
- MySQL5.6.25 to MySQL5.6.30 is **Update**, yet MySQL5.6 to MySQL5.7 is **Upgrade**.

Maintenance for ONLYOFFICE includes the following two tasks.

- System update (Operating System and Runtime) 
- ONLYOFFICE upgrade 

## System Update 

Run a command to complete system update:

``` shell
#For Ubuntu&Debian
apt update && apt upgrade -y

#For Centos&Redhat
yum update -y --skip-broken
```
> This deployment package is pre-configured with a scheduled task for automatic updating. If you want to remove the automatic update, please delete the corresponding Cron.

## ONLYOFFICE Upgrade

This deployment solution is based on Docker and so you can upgrade ONLYOFFICE by the standard process of Docker:  

> You should complete a snapshot backup before upgrade

1. Use **SSH** to login Server, cd to the directory of docker-compose file, then pull images
   ```
   cd /data/wwwroot/onlyoffice
   sudo docker-compose pull
   ```
2. Stop the containers
   ```
   sudo docker-compose down -v
   ```
3. Recreate containers
   ```
   sudo docker-compose up -d
   ```

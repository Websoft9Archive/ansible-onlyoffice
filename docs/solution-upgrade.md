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

The following upgrade steps are offered for you based on  Official document [Upgrading ONLYOFFICE Community Server](https://github.com/ONLYOFFICE/Docker-CommunityServer#upgrading-onlyoffice-community-server).

1. Take snapshots of your server before upgrade.

2. Delete current ONLYOFFICE Community Server container.
   ```
   cd /data/wwwroot/onlyoffice
   sudo docker-compose down -v
   ```

3. Delete the current image of ONLYOFFICE Community Server.
   ```
   docker image rm onlyoffice/communityserver
   ```

4. Restart Docker.
   ```
   cd /data/wwwroot/onlyoffice
   sudo docker-compose up -d
   ```

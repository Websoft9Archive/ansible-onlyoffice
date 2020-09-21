# 服务启停

使用由Websoft9提供的 ONLYOFFICE 部署方案，可能需要用到的服务如下：

### ONLYOFFICE

```shell
sudo systemctl start onlyoffice-server
sudo systemctl stop onlyoffice-server
sudo systemctl restart onlyoffice-server
sudo systemctl status onlyoffice-server

# you can use this debug mode if ONLYOFFICE service can't run
onlyoffice-server console
```

### MySQL

```shell
sudo systemctl start mysql
sudo systemctl stop mysql
sudo systemctl restart mysql
sudo systemctl status mysql
```

### Redis

```shell
systemctl start redis
systemctl stop redis
systemctl restart redis
systemctl status redis
```

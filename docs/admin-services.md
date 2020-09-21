# Start or Stop the Services

These commands are required when you use the ONLYOFFICE of Websoft9.

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
sudo systemctl start redis
sudo systemctl stop redis
sudo systemctl restart redis
sudo systemctl status redis
```

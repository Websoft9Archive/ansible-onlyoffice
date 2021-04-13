# 服务启停

使用由Websoft9提供的 ONLYOFFICE 部署方案，可能需要用到的服务如下：

### ONLYOFFICE Community Server on Docker

```shell
sudo docker inspect onlyofficecommunityserver
sudo docker start onlyofficecommunityserver
sudo docker restart onlyofficecommunityserver
sudo docker stop onlyofficecommunityserver
sudo docker rm onlyofficecommunityserver

# 进入容器运行命令
sudo docker exec -it onlyofficecommunityserver /bin/bash
```


### ONLYOFFICE Document Server on Docker

```shell
sudo docker inspect onlyofficedocumentserver
sudo docker start onlyofficedocumentserver
sudo docker restart onlyofficedocumentserver
sudo docker stop onlyofficedocumentserver
sudo docker rm onlyofficedocumentserver

# 进入容器运行命令
sudo docker exec -it onlyofficedocumentserver /bin/bash
```

### MySQL Server on Docker
```shell
sudo docker inspect onlyoffice-mysql-server
sudo docker start onlyoffice-mysql-server
sudo docker restart onlyoffice-mysql-server
sudo docker stop onlyoffice-mysql-server
sudo docker rm onlyoffice-mysql-server

# 进入容器运行命令
sudo docker exec -it onlyoffice-mysql-server /bin/bash
```

### phpMyAdmin on Docker
```shell
sudo docker inspect phpmyadmin
sudo docker start phpmyadmin
sudo docker restart phpmyadmin
sudo docker stop phpmyadmin
sudo docker rm phpmyadmin
```

### Nginx

```shell
sudo systemctl start mysql
sudo systemctl stop mysql
sudo systemctl restart mysql
sudo systemctl status mysql
```


### Docker
```shell
sudo systemctl start docker
sudo systemctl stop docker
sudo systemctl restart docker
sudo systemctl status docker
```

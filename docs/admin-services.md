# Start or Stop the Services

These commands are required when you use the ONLYOFFICE of Websoft9.

### ONLYOFFICE Community Server on Docker

```shell
sudo docker inspect onlyofficecommunityserver
sudo docker start onlyofficecommunityserver
sudo docker restart onlyofficecommunityserver
sudo docker stop onlyofficecommunityserver
sudo docker rm onlyofficecommunityserver

# run commands in Container
sudo docker exec -it onlyofficecommunityserver /bin/bash
```

### MySQL Server on Docker
```shell
sudo docker inspect onlyoffice-mysql-server
sudo docker start onlyoffice-mysql-server
sudo docker restart onlyoffice-mysql-server
sudo docker stop onlyoffice-mysql-server
sudo docker rm onlyoffice-mysql-server

# run commands in Container
sudo docker exec -it onlyoffice-mysql-server /bin/bash
```

### ONLYOFFICE Document Server on Docker

```shell
sudo docker inspect onlyofficedocumentserver
sudo docker start onlyofficedocumentserver
sudo docker restart onlyofficedocumentserver
sudo docker stop onlyofficedocumentserver
sudo docker rm onlyofficedocumentserver

# run commands in Container
sudo docker exec -it onlyofficedocumentserver /bin/bash
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
sudo systemctl start nginx
sudo systemctl stop nginx
sudo systemctl restart nginx
sudo systemctl status nginx
```


### Docker
```shell
sudo systemctl start docker
sudo systemctl stop docker
sudo systemctl restart docker
sudo systemctl status docker
```

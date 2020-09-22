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

### MySQL

```shell
sudo systemctl start mysql
sudo systemctl stop mysql
sudo systemctl restart mysql
sudo systemctl status mysql
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

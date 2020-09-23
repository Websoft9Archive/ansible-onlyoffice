# FAQ

#### ONLYOFFICE 是否支持中文？

支持，可以在线切换多种语言

#### Community Edition vs Enterprise Edition？

参考官方说明 [Compare Community Edition and Enterprise Edition](https://github.com/ONLYOFFICE/CommunityServer#compare-community-edition-and-enterprise-edition)

#### 能否介绍 ONLYOFFICE 各种版本的关系？

OnlyOffice的产品家族比较复杂，根据官方的介绍，可以分为：

* ENTERPRISE EDITION：企业版
* COMMUNITY EDITION：开源版
* INTEGRATION EDITION：比如集成了 ownCloud 的版本
* DEVELOPER EDITION：开发者版本

其中每一个版本都是由：Community Server, Document Server, Mail Server 组成。  

COMMUNITY EDITION 是一个完全免费的版本。DEVELOPER EDITION 是适用于开发者的[收费版本](https://www.onlyoffice.com/zh/developer-edition-prices.aspx)。

#### 数据库密码可以修改吗？

可以，但是修改后需要同步修改 ONLYOFFICE docker-compose 文件，然后通过 docker-compose 重新运行容器。

#### If there is no domain name, can I deploy ONLYOFFICE?

Yes, access ONLYOFFICE by *http://Cloud Server Internet IP*.

#### What is the password for the database root user?

The password is stored in the server related file `/credentials/password.txt`.

#### Is there a web-base GUI database management tool?

Yes, phpMyAdmin is included. Visit by *http://Internet IP:9090*.

#### How to change the permissions of filesystem?

Change owner(group) or permissions as below:

```shell
chown -R onlyoffice.onlyoffice /data/wwwroot/onlyoffice
find /data/wwwroot/onlyoffice -type d -exec chmod 750 {} \;
find /data/wwwroot/onlyoffice -type f -exec chmod 640 {} \;
```

#### What's the difference between Deployment and Installation?

- Deployment is a process of installing and configuring a series of software to the server in a different order, which is a complex system engineering.  
- Installation is the process of starting the initial wizard after the application is prepared.  
- Installation is simpler than deployment. 

#### What's Cloud Platform?

Cloud platform refers to platform manufacturers that provide cloud computing services, such as: **Azure, AWS, Alibaba Cloud, HUAWEI CLOUD, Tencent Cloud**, etc.

#### What is the difference between Instance, Cloud Server, Virtual Machine, ECS, EC2, CVM, and VM?

No difference. All refer to cloud servers. They are the different terminology used by manufacturers.
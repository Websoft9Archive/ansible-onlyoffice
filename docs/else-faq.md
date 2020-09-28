# FAQ

#### Does ONLYOFFICE support multiple languages?

Yes, you can switch language online.

#### What's the difference between Community Edition vs Enterprise Edition？

Refer to Official document: [Compare Community Edition and Enterprise Edition](https://github.com/ONLYOFFICE/CommunityServer#compare-community-edition-and-enterprise-edition)

#### What's the relationship between various edition of ONLYOFFICE?

ONLYOFFICE offers different versions:

* ENTERPRISE EDITION
* COMMUNITY EDITION
* INTEGRATION EDITION
* DEVELOPER EDITION

Each edition consists of: Community Server, Document Server, Mail Server.  

COMMUNITY EDITION is free, while [DEVELOPER EDITION](https://www.onlyoffice.com/en/developer-edition-prices.aspx) is a paid version for developers.

#### Can I change the password of database?

Yes, after the change, you need to modify the corresponding ONLYOFFICE docker-compose document, and restart Docker by docker-compose.

#### If there is no domain name, can I deploy ONLYOFFICE?

Yes, access ONLYOFFICE by *http://Cloud Server Internet IP*.

#### What is the password for the database root user?

The password is stored in the related file of server `/credentials/password.txt`.

#### How to forbid access from internet to phpMyAdmin?

Close TCP:9090 by Security Group Setting.

#### Is it possible to modify the source path of ONLYOFFICE?

No.

#### Is there a web-base GUI database management tool?

Yes, phpMyAdmin is included. Access by *http://Cloud Sever Internet IP:9090*.

#### How to change uploaded file permission?

Change owner(group) or permissions as below:

```shell
chown -R onlyoffice.onlyoffice /data/wwwroot/onlyoffice
find /data/wwwroot/onlyoffice -type d -exec chmod 750 {} \;
find /data/wwwroot/onlyoffice -type f -exec chmod 640 {} \;
```

#### What's the difference between Deployment and Installation?

- Deployment is a process of installing and configuring a series of software to the server in a different order, which is a complex system engineering.  
- Installation is the process of starting the initial wizard to complete configuration after the application is prepared.  
- Installation is simpler than deployment. 

#### What's Cloud Platform?

Cloud platform refers to platform manufacturers that provide cloud computing services, such as: **Azure, AWS, Alibaba Cloud, HUAWEI CLOUD, Tencent Cloud**, etc.

#### What is the difference between Instance, Cloud Server, Virtual Machine, ECS, EC2, CVM, and VM?

No difference. All refer to cloud servers. They are the different terminology used by manufacturers.
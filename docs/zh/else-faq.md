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

#### 如果没有域名是否可以部署 ONLYOFFICE？

可以，访问`http://服务器公网IP` 即可

#### 数据库 root 用户对应的密码是多少？

密码存放在服务器相关文件中：`/credentials/password.txt`

#### 是否有可视化的数据库管理工具？

有，内置phpMyAdmin，访问地址：*http://服务器公网IP:9090*

#### 如何禁止外界访问phpMyAdmin？

服务器安全组中关闭 9090 端口即可

#### 是否可以修改ONLYOFFICE的源码路径？

不可以

#### 如何修改上传的文件权限?

```shell
# 拥有者
chown -R apache.apache /data/wwwroot/onlyoffice
# 读写执行权限
find /data/wwwroot/onlyoffice -type d -exec chmod 750 {} \;
find /data/wwwroot/onlyoffice -type f -exec chmod 640 {} \;
```

#### 部署和安装有什么区别？

部署是将一序列软件按照不同顺序，先后安装并配置到服务器的过程，是一个复杂的系统工程。  
安装是将单一的软件拷贝到服务器之后，启动安装向导完成初始化配置的过程。  
安装相对于部署来说更简单一些。 

#### 云平台是什么意思？

云平台指提供云计算服务的平台厂家，例如：Azure,AWS,阿里云,华为云,腾讯云等

#### 实例，云服务器，虚拟机，ECS，EC2，CVM，VM有什么区别？

没有区别，只是不同厂家所采用的专业术语，实际上都是云服务器
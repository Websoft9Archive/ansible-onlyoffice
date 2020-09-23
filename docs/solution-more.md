# More

Each of the following solutions has been proved to be effective and we hope it can give you help.

## Binding Domain

The precondition for binding a domain is that ONLYOFFICE can accessed by domain name.

When there is only one website on the server, you can visit the website without binding domain. While considering the server security and subsequent maintenance, **Binding Domain** is necessary.

Steps for binding ONLYOFFICE domain are as follows:

1. Connect your Cloud Server;
2. Modify [Nginx vhost configuration file](/stack-components.md#nginx),and change the **server_name**'s value to your domain name.
   ```text
   server
   {
   listen 80;
   server_name www.example.com;  # change it into your domain name
   ...
   }
   ```
## ONLYOFFICE 设置语言

登录 ONLYOFFICE，在后台 【设置】>【通用】>【自定义】中设置语言

![ONLYOFFICE 设置语言](https://libs.websoft9.com/Websoft9/DocsPicture/en/onlyoffice/onlyoffice-lanuageset-websoft9.png)


## ONLYOFFICE 文件预览与编辑

由 Websoft9 提供的 ONLYOFFICE 部署方案默认包含 ONLYOFFICE Document Server，并已完成设置，无需任何设置即可在线编辑和预览文档。

下面展现文档预览与编辑的设置原理，仅供后续个性化修改参考：

* 登录到 ONLYOFFICE ，依次打开：【设置】>【集成】>【文件服务】，你可以看到预配置：
  ![ONLYOFFICE 文件服务](https://libs.websoft9.com/Websoft9/DocsPicture/en/onlyoffice/onlyoffice-preview-websoft9.png)

* 本地浏览器访问：*http://服务器公网IP:9002*，会看到 OnlyOffice Document Server 正在运行的提示 
   ![ONLYOFFICE document is running ](https://libs.websoft9.com/Websoft9/DocsPicture/en/onlyoffice/onlyoffice-dkisrunning-websoft9.png)

> 请勿修改默认的文档配置，除非你打算采用其他文档服务替换它

## 重置密码

常用的 ONLYOFFICE 重置密码相关的操作主要有修改密码和找回密码两种类型：

### 修改密码

1. 登录 ONLYOFFICE 后台，依次打开：【Administrator】>【个人资料】，先完成**电子邮件验证**
  ![ONLYOFFICE 修改密码](https://libs.websoft9.com/Websoft9/DocsPicture/en/onlyoffice/onlyoffice-modifypw001-websoft9.png)

2. 重新回到个人资料页面，点击【Administrator】下的到下角，就会看到修改密码入口
  ![ONLYOFFICE 修改密码](https://libs.websoft9.com/Websoft9/DocsPicture/en/onlyoffice/onlyoffice-modifypw002-websoft9.png)

### 找回密码

如果用户忘记了密码，建议通过邮件的方式找回密码：

1. 完成 [SMTP 设置](/en/solution-smtp.md)

2. 打开 ONLYOFFICE 登录页面，点击【Forgot】开始通过邮件找回密码
  ![ONLYOFFICE 找回密码](https://libs.websoft9.com/Websoft9/DocsPicture/en/onlyoffice/onlyoffice-forgetpw-websoft9.png)
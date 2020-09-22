# 更多...

下面每一个方案，都经过实践证明行之有效，希望能够对你有帮助

## 域名绑定

绑定域名的前置条件是：已经完成域名解析（登录域名控制台，增加一个A记录指向服务器公网IP）  

完成域名解析后，从服务器安全和后续维护考量，需要完成**域名绑定**：

ONLYOFFICE 域名绑定操作步骤如下：

1. 确保域名解析已经生效  
2. 使用 SFTP 工具登录云服务器
3. 修改 [Nginx虚拟机主机配置文件](/zh/stack-components.md#nginx)，将其中的 **server_name** 项的值修改为你的域名
   ```text
   server
   {
   listen 80;
   server_name onlyoffice.yourdomain.com;  # 此处修改为你的域名
   ...
   }
   ```
4. 保存配置文件，重启 [Nginx 服务](/zh/admin-services.md#nginx)

## ONLYOFFICE 设置语言

登录owncloud，在后台 【Personal】>【General】中设置语言

![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/onlyoffice/onlyoffice-lanuageset-websoft9.png)


## ONLYOFFICE 文件预览与编辑

由 Websoft9 提供的 ONLYOFFICE 部署方案默认包含 ONLYOFFICE Document Server，并已完成设置，无需任何设置即可在线编辑和预览文档。

下面展现文档预览与编辑的设置原理，仅供你参考：

* 登录到 ONLYOFFICE ，依次打开：【设置】>【集成】>【文件服务】，你可以看到预配置：
  ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/onlyoffice/onlyoffice-preview-websoft9.png)

* 本地浏览器访问：*http://服务器公网IP:9002*，会看到 OnlyOffice Document Server 正在运行的提示 
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/onlyoffice/onlyoffice-dkisrunning-websoft9.png)

> 请勿修改默认的文档配置，除非你打算采用其他文档服务替换它

## 重置密码

常用的 ONLYOFFICE 重置密码相关的操作主要有修改密码和找回密码两种类型：

### 修改密码

1. 登录 Ghost 后台，依次打开：【Administrator】>【个人资料】，先完成电子邮件验证
  ![Ghost 修改密码](https://libs.websoft9.com/Websoft9/DocsPicture/zh/onlyoffice/onlyoffice-modifypw001-websoft9.png)

2. 重新回到个人资料页面，点击【Administrator】下的到下角，就会看到修改密码入口
  ![Ghost 修改密码](https://libs.websoft9.com/Websoft9/DocsPicture/zh/onlyoffice/onlyoffice-modifypw002-websoft9.png)

### 找回密码

如果用户忘记了密码，建议通过邮件的方式找回密码：

1. 完成 [SMTP 设置](/zh/solution-smtp.md)

2. 打开 ONLYOFFICE 登录页面，点击【Forgot】开始通过邮件找回密码
  ![ONLYOFFICE 找回密码](https://libs.websoft9.com/Websoft9/DocsPicture/zh/onlyoffice/onlyoffice-forgetpw-websoft9.png)
# SMTP

大量用户实践反馈，使用**第三方 SMTP 服务发送邮件**是一种最稳定可靠的方式。  

请勿在服务器上安装sendmail等邮件系统，因为邮件系统的路由配置受制与域名、防火墙、路由等多种因素制约，非常不稳定，且不易维护、诊断故障很困难。

下面以**QQ邮箱**为例，提供设置 ONLYOFFICE 发邮件的步骤：

1. 在网易邮箱管理控制台获取 SMTP 相关参数
   ```
   SMTP host: smtp.qq.com
   SMTP port: 465 or 994 for SSL-encrypted email
   SMTP Authentication: must be checked
   SMTP Encryption: must SSL
   SMTP username: websoft9@qq.com
   SMTP password: #wwBJ8    //此密码不是邮箱密码，是需要通过163邮箱后台设置去获取的授权码
   ```

2. 登录 ONLYOFFICE 控制台，依次打开：【设置】>【集成】>【SMTP设置】

3. 准确填写 SMTP 参数
   ![ONLYOFFICE SMTP](https://libs.websoft9.com/Websoft9/DocsPicture/zh/onlyoffice/onlyoffice-smtp-1-websoft9.png)

   > 【主机登录】与【发件人电邮地址】必须保持一致，否则无法发送邮件。

4. 点击【发送邮件测试】

更多邮箱设置（QQ邮箱，阿里云邮箱，Gmail，Hotmail等）以及无法发送邮件等故障之诊断，请参考由Websoft9提供的 [SMTP 专题指南](https://support.websoft9.com/docs/faq/zh/tech-smtp.html)

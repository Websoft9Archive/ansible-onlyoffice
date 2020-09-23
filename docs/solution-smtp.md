# SMTP

Sending mail is a common feature for ONLYOFFICE. With a large number of users' practice and feedback, only one way is recommended, that is, using the **third-party SMTP service** to send the email.

> Do not try to install **Sendmail** or other Mail server software on your Cloud Server for sending mail, because it has great difficulty in maintenance.

Taking **Gmail's SMTP Service** as an example, refer to the following steps to configure sending mail:

1. Log in Gmail console, and prepare your SMTP settings.
   ```
   SMTP host: smtp.gmail.com
   SMTP port: 587 for TLS email, 465 for SSL-encrypted email
   SMTP Authentication: must be checked
   SMTP Encryption: must SSL
   SMTP username: Your Gmail address (e.g. example@gmail.com)
   SMTP password: Your Gmail password
   ```
2. 登录 ONLYOFFICE 控制台，依次打开：【设置】>【集成】>【SMTP设置】

3. 准确填写 SMTP 参数
   ![ONLYOFFICE SMTP](https://libs.websoft9.com/Websoft9/DocsPicture/en/onlyoffice/onlyoffice-smtp-1-websoft9.png)

   > 【Host】与【Send Email Address】必须保持一致，否则无法发送邮件。

4. 点击【发送邮件测试】

More SMTP Service(Gmail, Hotmail, QQ mail, Yahoo mail, SendGrid and so on)  settings or Issues with SMTP, please refer to Websoft9's *[SMTP Guide](https://support.websoft9.com/docs/faq/tech-smtp.html)*

# SMTP

With lots of users' practice and feedback, the most recommended way is using the **third-party SMTP service** to send the email.

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
2. Log in ONLYOFFICE console and open: 【Settings】>【Integration】>【SMTP Settings】

3. Fill in all the fields with accurate information.
   ![ONLYOFFICE SMTP](https://libs.websoft9.com/Websoft9/DocsPicture/en/onlyoffice/onlyoffice-smtp-1-websoft9.png)

   > 【Host】and【Send Email Address】must be consistent, otherwise the email cannot be sent.

4. Click 【Sen Test Mail】to check if it works.

More SMTP Service (Gmail, Hotmail, QQ mail, Yahoo mail, SendGrid and so on)  settings or Issues with SMTP, please refer to Websoft9's *[SMTP Guide](https://support.websoft9.com/docs/faq/tech-smtp.html)*

# More

Each of the following solutions has been proved to be effective and we hope it can give you help.

## Domain Binding

The precondition for **Domain binding** is the **Domain resolution** for ONLYOFFICE has been completed.

Considering the server security and subsequent maintenance, the **Domain Binding** step is necessary.

Steps for ONLYOFFICE domain binding are as follows:

1. Connect your Cloud Server by SFTP tool.
2. Modify [Nginx vhost configuration file](/stack-components.md#nginx), and change the **server_name**'s item to your domain name.
   ```text
   server
   {
   listen 80;
   server_name www.example.com;  # change it into your domain name
   ...
   }
   ```
## ONLYOFFICE Language Setting

Log in ONLYOFFICE console, open 【Settings】>【Common】>【Customization】, set Language and time zone.

![ONLYOFFICE Language](https://libs.websoft9.com/Websoft9/DocsPicture/en/onlyoffice/onlyoffice-lanuageset-websoft9.png)


## ONLYOFFICE Document Preview and Editing

The ONLYOFFICE deployment solution provided by Websoft9 contains ONLYOFFICE Document Server by default, and the settings are completed. You can edit and preview online without any settings.

Steps for setting preview and editing are as follows, acting as reference for you to have personalized modifications.

* Log in ONLYOFFICE, open:【Settings】>【Integration】>【Document Service】and you can see the settings.
  ![ONLYOFFICE document service](https://libs.websoft9.com/Websoft9/DocsPicture/en/onlyoffice/onlyoffice-preview-websoft9.png)

* Use local browser to access：*http://Cloud Server Internet IP:9002*, and get the notice that OnlyOffice Document Server is running.
   ![ONLYOFFICE document is running ](https://libs.websoft9.com/Websoft9/DocsPicture/en/onlyoffice/onlyoffice-dkisrunning-websoft9.png)

> Please don't modify the default settings unless you want to replace it with other document service.

## Reset password

There are two common measures to reset password for ONLYOFFICE:  

### Change password

1. Log in ONLYOFFICE console, open:【Administrator】>【Profile】and complete **email validation**.
  ![ONLYOFFICE change password](https://libs.websoft9.com/Websoft9/DocsPicture/en/onlyoffice/onlyoffice-modifypw001-websoft9.png)

2. Return to the profile page, click the arrow next to【Administrator】, then click 【Change password】.
  ![ONLYOFFICE change password](https://libs.websoft9.com/Websoft9/DocsPicture/en/onlyoffice/onlyoffice-modifypw002-websoft9.png)

### Forgot password

Try to retrieve your password through email when forgot it.

1. Complete [SMTP settings](/en/solution-smtp.md)

2. Open ONLYOFFICE login page, click【Forgot】to retrieve the password by email.
  ![ONLYOFFICE forgot password](https://libs.websoft9.com/Websoft9/DocsPicture/en/onlyoffice/onlyoffice-forgetpw-websoft9.png)
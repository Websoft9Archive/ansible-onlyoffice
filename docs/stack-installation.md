# Initial Installation

If you have completed the ONLYOFFICE deployment on Cloud Platform, follow the steps below to start a quick use.
> For initial installation of OnlyOffice Document Server, refer to [Document Server](/solution-documentserver.md).


## Preparation

1. Get the **Cloud Server Internet IP** on your Cloud Platform.
2. Check your **[Inbound of Security Group Rule](https://support.websoft9.com/docs/faq/tech-instance.html)** of Cloud Console to ensure the **TCP:80** is allowed.
3. Make a domain resolution on your Cloud Console if you want to use domain for ONLYOFFICE.

## ONLYOFFICE Installation Wizard

1. Use local Chrome or Firefox to access the URL *http://domain* or *http://Internet IP*.
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/onlyoffice/onlyoffice-installwait-websoft9.png)

2. Wait for the start up process (which may last for 2-5 mins) until the following page is displayed.
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/onlyoffice/onlyoffice-install-websoft9.png)

3. Set your password, type your email as the username, check the terms and click【Continue】.
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/onlyoffice/onlyoffice-bk-websoft9.png)

4. Log in ONLYOFFICE console and begin your actions.  
   ![](http://libs.websoft9.com/Websoft9/DocsPicture/en/onlyoffice/onlyoffice-websoft9-001.png)

   * **Documents**
     ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/onlyoffice/onlyoffice-websoft9-002.png)

   * **Projects**
     ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/onlyoffice/onlyoffice-websoft9-003.png)

   * **CRM**
     ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/onlyoffice/onlyoffice-websoft9-004.png)

   * **Document edit and preview**
     ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/onlyoffice/onlyoffice-websoft9-005.png)

   * **Community**
     ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/onlyoffice/onlyoffice-function-club-websoft9.png)

   * **Email Portal**
     ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/onlyoffice/onlyoffice-function-email-websoft9.png)

   * **APPS integration**
     ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/onlyoffice/onlyoffice-function-apps-websoft9.png)

> More guide about ONLYOFFICE, please refer to [ONLYOFFICE Documentation](https://helpcenter.onlyoffice.com/server/docker/opensource/index.aspx).


## Q&A

#### Can't visit the start page of ONLYOFFICE?

Your TCP:80 of Security Group Rules is not allowed, so there is no response from Chrome or Firefox.

#### Can ONLYOFFICE support document preview and editing service by default?

Yes, this function is configured by default, just use without any settings.

#### Why ONLYOFFICE runs slowly?

ONLYOFFICE requires much memory, at least 8G is recommended.

#### Can ONLYOFFICE offer external document editing and preview service?

Yes, service address: *http://Cloud Server Internet IP:9002*
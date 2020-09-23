# Initial Installation

If you have completed the ONLYOFFICE deployment, follow the steps below to start a quick use.

## Preparation

1. Get the **Internet IP** on your Cloud Platform.
2. Check your **[Inbound of Security Group Rule](https://support.websoft9.com/docs/faq/tech-instance.html)** of Cloud Console to ensure the **TCP:80** is allowed.
3. Make a domain resolution on your Cloud Console if you want to use domain for ONLYOFFICE.

## ONLYOFFICE Installation Wizard

1. Use local Chrome or Firefox to access the URL *http://DNS* or *http://Cloud Server Internet IP*. You will enter installation wizard of ONLYOFFICE.
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/onlyoffice/onlyoffice-installwait-websoft9.png)

2. 耐心等待 ONLYOFFICE 初始化过程（可能会持续2-5分钟），直至出现如下界面
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/onlyoffice/onlyoffice-install-websoft9.png)

3. 设置自己的密码和邮箱（作为登录的用户名），勾选条款后点击【Continue】开始安装
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/onlyoffice/onlyoffice-bk-websoft9.png)

4. 登录到 ONLYOFFICE 后台，开始使用。  
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

#### ONLYOFFICE 默认支持文档编辑与预览吗？

默认已经配置好，无需任何设置即可使用

#### 为什么 ONLYOFFICE 这么慢？

ONLYOFFICE 对内存要求比较高，建议最少 8G 内存

#### 本应用是否可以对外提供文档编辑与预览服务？

可以，*http://服务器公网IP:9002* 即服务地址
# 初始化安装

在云服务器上部署 ONLYOFFICE 预装包之后，请参考下面的步骤快速入门。
> 关于 ONLYOFFICE Document Server 的安装和使用，请参考 [Document Server](/zh/solution-documentserver.md) 章节。

## 准备

1. 在云控制台获取您的 **服务器公网IP地址** 
2. 在云控制台安全组中，检查 **Inbound（入）规则** 下的 **TCP:80** 端口是否开启
3. 若想用域名访问 ONLYOFFICE，请先到 **域名控制台** 完成一个域名解析

## ONLYOFFICE 安装向导

1. 使用本地 Chrome 或 Firefox 浏览器访问网址：*http://域名* 或 *http://服务器公网IP*, 进入初始化页面
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/onlyoffice/onlyoffice-installwait-websoft9.png)

2. 耐心等待 ONLYOFFICE 初始化过程（可能会持续2-5分钟），直至出现如下界面
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/onlyoffice/onlyoffice-install-websoft9.png)

3. 设置自己的密码和邮箱（作为登录的用户名），勾选条款后点击【Continue】开始安装
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/onlyoffice/onlyoffice-bk-websoft9.png)

4. 登录到 ONLYOFFICE 后台，开始使用。  
   ![](http://libs.websoft9.com/Websoft9/DocsPicture/zh/onlyoffice/onlyoffice-websoft9-001.png)

   * **文档管理**
     ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/onlyoffice/onlyoffice-websoft9-002.png)

   * **项目管理**
     ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/onlyoffice/onlyoffice-websoft9-003.png)

   * **客户关系管理（CRM）**
     ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/onlyoffice/onlyoffice-websoft9-004.png)

   * **文档在线编辑（默认可用，无需任何设置）**
     ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/onlyoffice/onlyoffice-websoft9-005.png)

   * **社区博客**
     ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/onlyoffice/onlyoffice-function-club-websoft9.png)

   * **邮件管理门户**
     ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/onlyoffice/onlyoffice-function-email-websoft9.png)

   * **第三方APP集成**
     ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/onlyoffice/onlyoffice-function-apps-websoft9.png)

> 需要了解更多 ONLYOFFICE 的使用，请参考官方文档：[ONLYOFFICE Documentation](https://helpcenter.onlyoffice.com/server/docker/opensource/index.aspx)

## 常见问题

#### 浏览器打开IP地址，无法访问 ONLYOFFICE（白屏没有结果）？

您的服务器对应的安全组80端口没有开启（入规则），导致浏览器无法访问到服务器的任何内容

#### ONLYOFFICE 默认支持文档编辑与预览吗？

默认已经配置好，无需任何设置即可使用

#### 为什么 ONLYOFFICE 这么慢？

ONLYOFFICE 对内存要求比较高，建议最少 8G 内存

#### 本应用是否可以对外提供文档编辑与预览服务？

可以，*http://服务器公网IP:9002* 即服务地址
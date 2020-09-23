# Document Server

本章适合使用了 Websoft9 提供的 ONLYOFFICE Document Server 部署方案（区别于 ONLYOFFICE）。

## 组件

包含：Nginx, ONLYOFFICE Document Server on Docker, Docker等三个组件。  

Nginx 用于接受用户访问请求，然后转发给 ONLYOFFICE Document Server on Docker。  

组件的详细信息参考[*参数*](zh/stack-components.md)章节。

## 访问

本地浏览器访问：*http://服务器公网IP* 和 *http://服务器公网IP:9002* 均可看到 OnlyOffice Document Server 正在运行的提示。  
![ONLYOFFICE Document Server is running](https://libs.websoft9.com/Websoft9/DocsPicture/en/onlyoffice/onlyoffice-dkisrunning-websoft9.png)

## 域名绑定和 HTTPS 设置

由于已经安装了 Nginx 作为 ONLYOFFICE Document Server on Docker 的转发服务，因此域名绑定和 HTTPS 完全只需要对 Nginx 进行设置。  

无需修改 ONLYOFFICE Document Server on Docker 容器，使得这项工作大大被简化。

设置详情参考如下：

* [域名绑定](/zh/solution-more.md#域名绑定)
* [HTTPS设置](/zh/solution-https.md)

## 集成

ONLYOFFICE Document Server 支持被 ownCloud, Nextcloud, Seafile 等网盘软件的文档预览与集成。

* [ownCloud 集成 ONLYOFFICE Document Server](http://support.websoft9.com/docs/owncloud/zh/solution-more.html#owncloud-文件预览与编辑)
* [Nextcloud 集成 ONLYOFFICE Document Server](http://support.websoft9.com/docs/nextcloud/zh/solution-more.html#nextcloud-文件预览与编辑)
* [Seafile 集成 ONLYOFFICE Document Server](https://support.websoft9.com/docs/seafile/zh/solution-office.html)
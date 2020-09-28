# Document Server

This section is offered for users who use the ONLYOFFICE Document Server deployment solution. (Different from ONLYOFFICE)

## Components

Include：Nginx, ONLYOFFICE Document Server on Docker, Docker

Nginx is used to accept user access requests and forward them to ONLYOFFICE Document Server on Docker.

More details about components, refer to this section [*Components*](/stack-components.md).

## Access

Use local browser to access *http://Cloud Server Internet IP* and *http://Cloud Server Internet IP:9002* and see the notice that ONLYOFFICE Document Server is running.
![ONLYOFFICE Document Server is running](https://libs.websoft9.com/Websoft9/DocsPicture/en/onlyoffice/onlyoffice-dkisrunning-websoft9.png)

## Domain binding and HTTPS Settings

Since Nginx has been installed as the forwarding service of ONLYOFFICE Document Server on Docker, you only need to set Nginx for domain binding and HTTPS settings. This becomes simple without modifying ONLYOFFICE Document Server on Docker container. 

For detailed settings, refer to:

* [Domain Binding](/solution-more.md#domainbinding)
* [HTTPS Settings](/solution-https.md)

## Integrate

ONLYOFFICE Document Server supports preview and integration by ownCloud, Nextcloud, Seafile and other Enterprise File Sync and Share.

* [ownCloud integrate ONLYOFFICE Document Server](http://support.websoft9.com/docs/owncloud/solution-more.html#owncloud-preview-and-edit)
* [Nextcloud integrate ONLYOFFICE Document Server](http://support.websoft9.com/docs/nextcloud/solution-more.html#nextcloud-preview-and-edit)
* [Seafile integrate ONLYOFFICE Document Server](https://support.websoft9.com/docs/seafile/solution-office.html)
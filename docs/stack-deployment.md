# Deployment

**Deployment is to copy the pre-installed ONLYOFFICE package online to your Cloud Server**. For example, after the user subscribes ONLYOFFICE on the Cloud Platform, the Platform will automatically copy the ONLYOFFICE to the corresponding Cloud Server.

- If ONLYOFFICE has been deployed, go to [Initial Installation](/zh/stack-installation.md) to complete the operation.
- If not, you need to deploy ONLYOFFICE to your cloud server first.

We offer two schemes for ONLYOFFICE deployment and results are the same.

## Deploy by Image

**To deploy by Image** means to start instance based on ONLYOFFICE images. **ONLYOFFICE Image** provide OS and software environment needed for ONLYOFFICE.

For users with experience with cloud servers, to deploy by Image means "one-click deployment".

Websoft9 publishes [ONLYOFFICE image](https://apps.websoft9.com/onlyoffice) on Cloud Platforms and there are three methods to deploy it.

* When **Create New Instance**, you can select the ONLYOFFICE image as the system boot template.
* When you **Subscribe ONLYOFFICE** at Marketplace, the system will ask you to create a new instance for this image in the meantime.
* When **Re-install OS** for you instance, you can replace the existing image with a ONLYOFFICE image.

## Deploy by Script

**To Deploy by Script** means to run a script on your cloud instance to pull the pre-installed package online to your instance and configure it at the same time.

Websoft9 provides the [ONLYOFFICE ansible automation script](https://github.com/Websoft9/ansible-onlyoffice) on Github. If you are familiar with Ansible, you can deploy the ONLYOFFICE to the instance automatically.

## Comparison

No matter you **deploy by image** or **deploy by script**, the results are the same. So, what's the difference between the two deployment methods?

Suggest to read the document [Deploy by Image vs Deploy by Script](https://support.websoft9.com/docs/faq/bz-product.html#deployment-comparison).
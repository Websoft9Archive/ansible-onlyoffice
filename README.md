
# OnyOffice 自动化安装与部署

本项目是由 [Websoft9](https://www.websoft9.com) 研发的 [OnyOffice](https://www.onlyoffice.com/zh/) 自动化安装程序，开发语言是 Ansible。使用本项目，只需要用户在 Linux 上运行一条命令，即可自动化安装 OnyOffice，让原本复杂的安装过程变得没有任何技术门槛。  

本项目是开源项目，采用 LGPL3.0 开源协议。

## 配置要求

安装本项目，确保符合如下的条件：

| 条件       | 详情       | 备注  |
| ------------ | ------------ | ----- |
| 操作系统       | CentOS7.x, Ubuntu18.04, Amazon Linux2       |  可选  |
| 公有云| AWS, Azure, 阿里云, 华为云, 腾讯云 | 可选 |
| 私有云|  KVM, VMware, VirtualBox, OpenStack | 可选 |
| 服务器配置 | 学习环境最低2核4G，安装时所需的带宽不低于10M |  建议采用按量100M带宽 |

生产环境，以官方提供的硬件配置要求为准：
```
CPU dual core 2 GHz or better
RAM 6 GB or more
HDD at least 40 GB of free space
Additional requirements at least 6 GB of swap
```

## 组件

包含的核心组件为：OnyOffice Community Edition | OnyOffice Document Server 可选安装

更多请见[参数表](/docs/zh/stack-components.md)

## 本项目安装的是 OnyOffice 最新版吗？

对 OnyOffice Community Edition 来说，本项目采用官方提供的[安装脚本](https://helpcenter.onlyoffice.com/server/linux/opensource/opensource-script-rpm-deb-installation.aspx)进行安装，官方会在安装脚本中 ONLYOFFICE 的版本进行控制，即每一次安装均可保证为 ONLYOFFICE 官方发布的最新稳定版。  

对 OnyOffice Document Server 来说，本项目采用的是 Docker 镜像安装，即每一次安装均可保证为 ONLYOFFICE 官方发布的最新稳定版。

## 安装指南

以 root 用户登录 Linux，运行下面的**一键自动化安装命令**即可启动自动化部署。若没有 root 用户，请以其他用户登录 Linux 后运行 `sudo su -` 命令提升为 root 权限，然后再运行下面的脚本。

```
wget -N https://raw.githubusercontent.com/Websoft9/ansible-linux/main/scripts/install.sh; bash install.sh -r onlyoffice
```

脚本后启动，就开始了自动化安装，必要时需要用户做出交互式选择，然后耐心等待直至安装成功。

**安装中的注意事项：**  

1. 操作不慎或网络发生变化，可能会导致SSH连接被中断，安装就会失败，此时请重新安装
2. 安装缓慢、停滞不前或无故中断，主要是网络不通（或网速太慢）导致的下载问题，此时请重新安装

多种原因导致无法顺利安装，请使用我们在公有云上发布的 [OnlyOffice 镜像](https://apps.websoft9.com/onlyoffice) 的部署方式


## 文档

文档链接：https://support.websoft9.com/docs/onlyoffice/zh

## License

本项目是开源项目，采用 LGPL3.0 开源协议。补充条款：不允许在公有云的云市场上售卖通过本项目安装后直接或间接制作的镜像。

## FAQ

- 命令脚本部署与镜像部署有什么区别？请参考：[镜像部署-vs-脚本部署](https://support.websoft9.com/docs/faq/zh/bz-product.html#镜像部署-vs-脚本部署)
- 本项目支持在 Ansible Tower 上运行吗？支持

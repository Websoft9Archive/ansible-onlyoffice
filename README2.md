ports: 80, 443, 5222, 5280, 9865, 9888, 9866, 9871, 9882, 25

安装参数：  参考官方说明：[Installing Community Edition with additional script parameters](https://helpcenter.onlyoffice.com/server/docker/opensource/opensource-script-parameters.aspx)
常用参数:
bash opensource-install.sh -ims false  # 不安装Mail Server

**MySQL server**

Parameter |  Description  | Default
----------|---------------|---------
-mysqlh   --mysqlhost	 |  MySQL server host  | localhost
-mysqlprt --mysqlport | MySQL server port  | 3306
-mysqlru  --mysqlrootuser |	MySQL server root user | root
-mysqlrp  --mysqlrootpassword |	MySQL server root password | my-secret-pw

**Community Server database**

Parameter |  Description  | Default
----------|---------------|---------
-mysqld --mysqldatabase |	Community Server database name |	onlyoffice
-mysqlu --mysqluser |	Community Server database user	| onlyoffice_user
-mysqlp --mysqlpassword |	Community Server database password |	onlyoffice_pass

**Mail Server database**

Parameter |  Description  | Default
----------|---------------|---------
-mysqlmd --mysqlmaildatabase |	Mail Server database name |	onlyoffice_mailserver
-mysqlmu --mysqlmailuser |	Mail Server database user |	mail_admin
-mysqlmp --mysqlmailpassword |	Mail Server database password |	Isadmin123

**System requirements**

* CPU dual core 2 GHz or better
* RAM 6 GB or more
* HDD at least 40 GB of free space
* Additional requirements at least 6 GB of swap
* OS amd64 Linux distribution with kernel version 3.10 or later
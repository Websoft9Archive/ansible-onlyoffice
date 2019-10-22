安装参数：  参考[Installing Community Edition with additional script parameters](https://helpcenter.onlyoffice.com/server/docker/opensource/opensource-script-parameters.aspx)
常用参数:
bash opensource-install.sh -ims false  # 不安装Mail Server

MySQL server:
-mysqlh, --mysqlhost	MySQL server host	localhost
-mysqlprt, --mysqlport	MySQL server port	3306
-mysqlru, --mysqlrootuser	MySQL server root user	root
-mysqlrp, --mysqlrootpassword	MySQL server root password	my-secret-pw

Community Server database
Parameter	Description	Default
-mysqld, --mysqldatabase	Community Server database name	onlyoffice
-mysqlu, --mysqluser	Community Server database user	onlyoffice_user
-mysqlp, --mysqlpassword	Community Server database password	onlyoffice_pass

Mail Server database
Parameter	Description	Default
-mysqlmd, --mysqlmaildatabase	Mail Server database name	onlyoffice_mailserver
-mysqlmu, --mysqlmailuser	Mail Server database user	mail_admin
-mysqlmp, --mysqlmailpassword	Mail Server database password	Isadmin123
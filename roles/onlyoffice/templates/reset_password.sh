#!/bin/bash
old_password=$(grep 'password' /var/www/onlyoffice/sites/default/web_connection.xml | awk -F';' )

new_root_password=$(pwgen -Acns 8 1)
new_onlyoffice_password=$(pwgen -Acns 8 1)

systemctl restart mysql

root_hosts=$(echo $(mysql -uroot -p${old_password} -e "select host from mysql.user where user='root';") | sed 's/^host//')
onlyoffice_hosts=$(echo $(mysql -uonlyoffice -p${old_password} -e "select host from mysql.user where user='onlyoffice';") | sed 's/^host//')

for i in $root_hosts
do
  mysqladmin -uroot -p${old_password} -h $i password $new_root_password
done

for j in $onlyoffice_hosts
do
  mysqladmin -uonlyoffice -p${old_password} -h $j password $new_onlyoffice_password
done

echo -e 'MySQL username:root\nMySQL Password:'$new_root_password  > /credentials/password.txt
echo -e '\nMySQL username:onlyoffice\nMySQL Password:'$new_onlyoffice_password  >> /credentials/password.txt

sed -i 's/\/root\/init.sh//g' /etc/rc.local

rm -rf /root/init.sh
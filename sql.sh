dnf module disable mysql -y
cp mysql.repo /etc/yum.repos.d/mysql.repo
dnf install mysql-community-server -y
systemctl enable mysqld
systemctl restart mysqld
mysql_secure_installtion --set-root-pass Roboshop@1

cp mongod.repo /etc/yum.repos.d/mongod.repo
dnf install mongodb-org -y
sed -i -e 's|127.0.0.0|0.0.0.0|' /etc/mongod.conf
systemctl enable mongod
systemctl start mongod

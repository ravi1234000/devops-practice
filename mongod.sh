cp mongod.repo /etc/yum.repos.d/mongod.repo
dnf install mongodb-org -yum
systemctl enable mongod
systemctl start mongod

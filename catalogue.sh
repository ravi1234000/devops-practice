dnf module disable nodejs -y
dnf module enable nodejs:18 -y
dnf install nodejs -y

useradd roboshop
mkdir /app
curl -o /tmp/catalogue.zip https://roboshop-artifacts.s3.amazonaws.com/catalogue.zip
cd /app
unzip /tmp/catalogue.zip
npm install
cp catalogue.service /etc/systemd/system/catalogue.service
systemctl  enable catalogue
systemctl start catalogue
cp mongod.repo  /etc/yum.repos.d/mongod.repo
yum install mongodb-org-shell -y
mongo --host <ip address> </app/schema/catalogue.js

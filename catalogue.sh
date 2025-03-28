dnf module disable nodejs -y
dnf module enable nodejs:18 -y
echo -e "\e[36m<<<<<<<<<lanja>>>>>>>> \e[0m"
dnf install nodejs -y
echo -e "\e[36m<<<<<<<munda>>>>>>> \e [0m"

useradd roboshop
mkdir /app
echo -e "\e[36m<<<<<<<pukku>>>>>>> \e [0m"
curl -o /tmp/catalogue.zip https://roboshop-artifacts.s3.amazonaws.com/catalogue.zip
cd /app
echo -e "\e[36m<<<<<<<pukku>>>>>>> \e [0m"
unzip /tmp/catalogue.zip
npm install
echo -e "\e[36m<<<<<<<naukku>>>>>>> \e [0m"
cp /home/centos/devops-practice/catalogue.service /etc/systemd/system/catalogue.service
echo -e "\e[36m<<<<<<<boukku>>>>>>> \e [0m"
systemctl daemon-reload
systemctl  enable catalogue
systemctl restart catalogue
cp /home/centos/devops-practice/mongod.repo  /etc/yum.repos.d/mongod.repo
dnf install mongodb-org-shell -y
mongo --host <ip address> </app/schema/catalogue.js

dnf module disable nodejs -y
dnf module enable nodejs:18 -y
echo -e "\e[36m<<<<<<<<<lanja>>>>>>>> \e[0m"
dnf install nodejs -y
echo -e "\e[36m<<<<<<<munda>>>>>>> \e [0m"

useradd roboshop
mkdir /app
echp -e "\e[36m<<<<<<<pukku>>>>>>> \e [0m"
curl -o /tmp/catalogue.zip https://roboshop-artifacts.s3.amazonaws.com/catalogue.zip
cd /app
echp -e "\e[36m<<<<<<<pukku>>>>>>> \e [0m"
unzip /tmp/catalogue.zip
npm install
echp -e "\e[36m<<<<<<<naukku>>>>>>> \e [0m"
cp catalogue.service /etc/systemd/system/catalogue.service
echp -e "\e[36m<<<<<<<boukku>>>>>>> \e [0m"
systemctl  enable catalogue
systemctl start catalogue
cp mongod.repo  /etc/yum.repos.d/mongod.repo
yum install mongodb-org-shell -y
mongo --host <ip address> </app/schema/catalogue.js

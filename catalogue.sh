echo -e "\e[36m >>>>>> catalogue.service /etc/systemd/system/catalogue.service <<<<<< \e[0m"
cp catalogue.service /etc/systemd/system/catalogue.service

echo -e "\e[31m >>>>>> mongo.repo /etc/yum.repos.d/mongo.repo <<<<<< \e[0m"
cp mongo.repo /etc/yum.repos.d/mongo.repo

echo -e "\e[32m >>>>>> module disable nodejs -y <<<<<< \e[0m"
dnf module disable nodejs -y

echo -e "\e[33m >>>>>> module enable nodejs:18 -y <<<<<< \e[0m"
dnf module enable nodejs:18 -y

echo -e "\e[33m >>>>>> install nodejs -y <<<<<< \e[0m"
dnf install nodejs -y

echo -e "\e[34m >>>>>> useradd roboshop <<<<<< \e[0m"
useradd roboshop

echo -e "\e[35m >>>>>> mkdir /app <<<<<< \e[0m"
mkdir /app

echo -e "\e[36m >>>>>> catalogue.zip <<<<<< \e[0m"
curl -o /tmp/catalogue.zip https://roboshop-artifacts.s3.amazonaws.com/catalogue.zip

echo -e "\e[31m >>>>>> default /app <<<<<< \e[0m"
cd /app

echo -e "\e[32m >>>>>> unzip  <<<<<< \e[0m"
unzip /tmp/catalogue.zip

echo -e "\e[33m >>>>>> default /app <<<<<< \e[0m"
cd /app

echo -e "\e[34m >>>>>> npm install <<<<<< \e[0m"
npm install

echo -e "\e[35m >>>>>> install mongodb-org-shell -y <<<<<< \e[0m"
dnf install mongodb-org-shell -y

echo -e "\e[36m >>>>>> mongodb host <<<<<< \e[0m"
 mongo --host mongodb.sdevops28.online

echo -e "\e[32m >>>>>> daemon-reload <<<<<< \e[0m"
systemctl daemon-reload

echo -e "\e[31m >>>>>> enable catalogue <<<<<< \e[0m"
systemctl enable catalogue

echo -e "\e[33m >>>>>> restart catalogue <<<<<< \e[0m"
systemctl restart catalogue
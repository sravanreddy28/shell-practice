echo -e "\e[36m >>>>>> cp catalogue.service /etc/systemd/system/catalogue.service <<<<<< \e[0m"
echo -e "\e[31m >>>>>> cp mongo.repo /etc/yum.repos.d/mongo.repo <<<<<< \e[0m"

echo -e "\e[32m >>>>>> dnf module disable nodejs -y <<<<<< \e[0m"
echo -e "\e[33m >>>>>> dnf module enable nodejs:18 -y <<<<<< \e[0m"

echo -e "\e[33m >>>>>> dnf install nodejs -y <<<<<< \e[0m"

echo -e "\e[34m >>>>>> useradd roboshop <<<<<< \e[0m"

echo -e "\e[35m >>>>>> mkdir /app <<<<<< \e[0m"

echo -e "\e[36m >>>>>> curl -o /tmp/catalogue.zip https://roboshop-artifacts.s3.amazonaws.com/catalogue.zip <<<<<< \e[0m"
echo -e "\e[31m >>>>>> cd /app <<<<<< \e[0m"
echo -e "\e[32m >>>>>> unzip /tmp/catalogue.zip <<<<<< \e[0m"

echo -e "\e[33m >>>>>> cd /app <<<<<< \e[0m"
echo -e "\e[34m >>>>>> npm install <<<<<< \e[0m"

echo -e "\e[35m >>>>>> dnf install mongodb-org-shell -y <<<<<< \e[0m"
echo -e "\e[36m >>>>>> mongo --host mongodb.sdevops28.online </app/schema/catalogue.js <<<<<< \e[0m"

echo -e "\e[32m >>>>>> systemctl daemon-reload <<<<<< \e[0m"
echo -e "\e[31m >>>>>> systemctl enable catalogue <<<<<< \e[0m"
echo -e "\e[33m >>>>>> systemctl restart catalogue <<<<<< \e[0m"
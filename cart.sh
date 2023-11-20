cp cart.service /etc/systemd/system/cart.service

dnf module disable nodejs -y
dnf module enable nodejs:18 -y

dnf install nodejs -y

useradd roboshop

mkdir /app

curl -o /tmp/user.zip https://roboshop-artifacts.s3.amazonaws.com/cart.zip
cd /app
unzip /tmp/cart.zip

cd /app
npm install

dnf install mongodb-org-shell -y
mongo --host mongodb.sdevops28.online </app/schema/cart.js

systemctl daemon-reload
systemctl enable cart
systemctl restart cart
echo -e "\e[31m >>>>>> install nginx -y <<<<<< \e[0m"
dnf install nginx -y & >>/tmp/roboshop.log

echo -e "\e[32m >>>>>> cp nginx-roboshop.conf <<<<<< \e[0m"
cp nginx-roboshop.conf /etc/nginx/default.d/roboshop.conf & >>/tmp/roboshop.log

echo -e "\e[33m >>>>>> remove nginx demo  <<<<<< \e[0m"
rm -rf /usr/share/nginx/html/* & >>/tmp/roboshop.log

echo -e "\e[34m >>>>>> zip frontend <<<<<< \e[0m"
curl -o /tmp/frontend.zip https://roboshop-artifacts.s3.amazonaws.com/frontend.zip & >>/tmp/roboshop.log

echo -e "\e[35m >>>>>> /usr/share/nginx/html <<<<<< \e[0m"
cd /usr/share/nginx/html & >>/tmp/roboshop.log

echo -e "\e[36m >>>>>> unzip frontend.zip <<<<<< \e[0m"
 unzip /tmp/frontend.zip & >>/tmp/roboshop.log

echo -e "\e[31m >>>>>> enable nginx <<<<<< \e[0m"
systemctl enable nginx & >>/tmp/roboshop.log

echo -e "\e[32m >>>>>> restart nginx <<<<<< \e[0m"
systemctl restart nginx & >>/tmp/roboshop.log
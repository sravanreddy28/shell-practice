echo -e "\e[31m >>>>>>  dnf install nginx -y <<<<<< \e[0m"
echo -e "\e[32m >>>>>>  cp nginx-roboshop.conf /etc/nginx/default.d/roboshop.conf <<<<<< \e[0m"

echo -e "\e[33m >>>>>>  rm -rf /usr/share/nginx/html/* <<<<<< \e[0m"

echo -e "\e[34m >>>>>>  curl -o /tmp/frontend.zip https://roboshop-artifacts.s3.amazonaws.com/frontend.zip <<<<<< \e[0m"
echo -e "\e[35m >>>>>>  cd /usr/share/nginx/html <<<<<< \e[0m"

echo -e "\e[36m >>>>>>  unzip /tmp/frontend.zip <<<<<< \e[0m"

echo -e "\e[31m >>>>>>  systemctl enable nginx <<<<<< \e[0m"
echo -e "\e[32m >>>>>>  systemctl restart nginx <<<<<< \e[0m"
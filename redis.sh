echo -e "\e[31m >>>>>> install repo <<<<<< \e[0m"
dnf install https://rpms.remirepo.net/enterprise/remi-release-8.rpm -y >\tmp\roboshop.log

echo -e "\e[32m >>>>>> enable redis <<<<<< \e[0m"
dnf module enable redis:remi-6.2 -y >\tmp\roboshop.log

echo -e "\e[33m >>>>>> install redis <<<<<< \e[0m"
dnf install redis -y >\tmp\roboshop.log
# update listen address /etc/redis.conf & vim /etc/redis/redis.conf
echo -e "\e[34m >>>>>> enable redis  <<<<<< \e[0m"
systemctl enable redis >\tmp\roboshop.log

echo -e "\e[35m >>>>>> restart redis <<<<<< \e[0m"
systemctl restart redis >\tmp\roboshop.log
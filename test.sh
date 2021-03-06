########################################################################
# this is the script for install PHP 7.4 with mysql or mariyaDB
#
# and we use ngnix as web server  
#
#Note	: Befor ruing script please check once and run with super user
########################################################################

#instation of nginx

echo "instaling nginx"
sudo yum install nginx -y
sudo systemctl start nginx 
sudo systemctl enable nginx

#instation of PHP

echo "instaling PHP 7.4"
sudo yum install http://rpms.remirepo.net/enterprise/remi-release-7.rpm -y
yum --disablerepo="*" --enablerepo="remi-safe" list php[7-9][0-9].x86_64
sudo yum-config-manager --enable remi-php74
sudo yum install php php-mysqlnd php-fpm -y
php --version
systemctl start php-fpm.service
systemctl enable php-fpm.service


# updateing PHP 7.2 to PHP 7.4

dnf install https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm -y
dnf install https://rpms.remirepo.net/enterprise/remi-release-8.rpm -y
dnf module list php
dnf module reset php:remi-7.4
dnf module enable php:remi-7.4
dnf install php php-cli php-common -y
php -v


#installtion of sql  

echo "instaling mysql-server"
sudo yum install mysql-server -y
sudo systemctl start mysqld
sudo systemctl enable mysqld

# this is only if you want to do security task 
# mysql_secure_installation

# mysql -u root -p     #use this if your not root user else use below

mysql

create database mahi;

CREATE TABLE mytest (
id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
firstname VARCHAR(30) NOT NULL,
lastname VARCHAR(30) NOT NULL,
email VARCHAR(50),
reg_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
); 

show tables ;

# open firewall to outside if need 
# firewall-cmd --permanent --add-service=http
# firewall-cmd --permanent --add-service=mysql      # we are not allowing db server to expose outsied.
# firewall-cmd --reload                             # it will reload firela only need onprime bcoz cloud have SG


# sudo systemctl status mysqld

exit

# this is bkp database mariyaDB
# sudo dnf install mariadb-server -y
# sudo systemctl start mariadb
# sudo mysql_secure_installation
# sudo mysql
# mysql -u %usr% -p
# SHOW DATABASES;


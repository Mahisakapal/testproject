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

#installtion of sql  

echo "instaling mysql-server"
sudo yum install mysql-server -y
sudo systemctl start mysqld
sudo systemctl status mysqld
sudo systemctl enable mysqld

# this is only if you want to do security task 
# mysql_secure_installation

# mysql -u root -p
create database mahi;
GRANT ALL ON tecmint.* TO mahi@test IDENTIFIED BY 'test123';
exit

# this is bkp database mariyaDB
# sudo dnf install mariadb-server -y
# sudo systemctl start mariadb
# sudo mysql_secure_installation
# sudo mysql
# mysql -u %usr% -p
# SHOW DATABASES;


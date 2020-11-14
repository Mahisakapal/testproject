#instation of ngnix
sudo yum install ngnix -y
sudo systemctl start nginx 
sudo systemctl enable nginx

#instation of PHP
sudo yum install http://rpms.remirepo.net/enterprise/remi-release-7.rpm -y
yum --disablerepo="*" --enablerepo="remi-safe" list php[7-9][0-9].x86_64
sudo yum-config-manager --enable remi-php74
sudo yum install php php-mysqlnd php-fpm -y
php --version
systemctl start php-fpm.service
systemctl enable php-fpm.service

#installtion of sql sever 

yum -y install @mysql 
systemctl start mysqld
systemctl enable --now mysqld
systemctl status mysqld

# this is only if you want to do security task 
# mysql_secure_installation

mysql -u root -p
create database mahi;
GRANT ALL ON tecmint.* TO mahi@test IDENTIFIED BY 'test123';
exit

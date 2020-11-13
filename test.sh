sudo systemctl enable nginx

#instation of PHP
sudo yum install http://rpms.remirepo.net/enterprise/remi-release-7.rpm
yum --disablerepo="*" --enablerepo="remi-safe" list php[7-9][0-9].x86_64
sudo yum-config-manager --enable remi-php74
sudo yum install php php-mysqlnd php-fpm
php --version
systemctl start php-fpm.service
systemctl enable php-fpm.service

#installtion of sql sever 

sudo yum install mariadb-server mariadb
sudo systemctl start mariadb
sudo mysql_secure_installation
sudo systemctl enable mariadb

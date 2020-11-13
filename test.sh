sudo apt install nginx
sudo systemctl start nginx
sudo systemctl enable nginx 

sudo systemctl enable nginx

#instation of PHP
sudo apt install http://rpms.remirepo.net/enterprise/remi-release-7.rpm
apt --disablerepo="*" --enablerepo="remi-safe" list php[7-9][0-9].x86_64
sudo apt-config-manager --enable remi-php74
sudo apt install php php-mysqlnd php-fpm
php --version
systemctl start php-fpm.service
systemctl enable php-fpm.service

#installtion of sql sever 

sudo apt install mariadb-server mariadb
sudo systemctl start mariadb
sudo mysql_secure_installation
sudo systemctl enable mariadb


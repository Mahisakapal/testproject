
# yum install https
# systemctl start httpd
# systemctl enable httpd
# systemctl status httpd

Update firewall rules to allow inbound packets on HTTP and HTTPS

# firewall-cmd --zone=public --permanent --add-service=http
# firewall-cmd --zone=public --permanent --add-service=https
# firewall-cmd --reload


To install php 7.4 use the below command one by one
Install yum-utils and enable EPEL repository

# yum install epel-release yum-utils -y


Install remirepo using yum command

# yum install http://rpms.remirepo.net/enterprise/r...


To configure PHP 7.4 repository, use below command

# yum-config-manager --enable remi-php74


To install php 7.4 run the below 

# yum install php php-common php-opcache php-mcrypt php-cli php-gd php-curl php-mysql -y

Verify the PHP version

# php -v


Mariadb installation
Add MariaDB Yum Repository
Create a new repo file /etc/yum.repos.d/mariadb.repo
Paste the below content in it and save the file

[mariadb]
name = MariaDB
baseurl = http://yum.mariadb.org/10.4/rhel7-amd64
gpgkey=https://yum.mariadb.org/RPM-GPG-KEY-M...
gpgcheck=1

Now execute the following command to install

# yum install MariaDB-server MariaDB-client

Once installed enable the mariadb and start service of it

# systemctl enable mariadb
# systemctl start mariadb

Run secure installation script from the command line to secure you mariadb  and rest follow the instruction from the tutorial video.

# /usr/bin/mysql_secure_installation

Phpmyadmin installation use the below command

# yum install phpmyadmin

For allowing the access the phpmyadmin please follow the video to granted

File location : /etc/httpd/conf.d/phpMyAdmin.conf

dnf install https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm -y
dnf install https://rpms.remirepo.net/enterprise/remi-release-8.rpm -y
dnf module list php
 dnf module enable php:remi-7.4 -y 
 dnf install php php-cli php-common -y 

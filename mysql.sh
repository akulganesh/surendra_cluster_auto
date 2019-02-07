wget https://dev.mysql.com/get/archives/mysql-5.7/mysql-5.7.19-1.el7.x86_64.rpm-bundle.tar
tar -xf mysql-5.7.19-1.el7.x86_64.rpm-bundle.tar
yum remove mariadb* -y
yum install -y /root/mysql-community-common-5.7.19-1.el7.x86_64.rpm
yum install -y /root/mysql-community-libs-5.7.19-1.el7.x86_64.rpm
yum install -y /root/mysql-community-libs-compat-5.7.19-1.el7.x86_64.rpm
yum install -y /root/mysql-community-devel-5.7.19-1.el7.x86_64.rpm
yum install -y /root/mysql-community-client-5.7.19-1.el7.x86_64.rpm
yum install -y /root/mysql-community-server-5.7.19-1.el7.x86_64.rpm
service mysqld start
cat /var/log/mysql.log | grep temp

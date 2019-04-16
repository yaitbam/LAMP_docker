FROM ubuntu
RUN apt-get update -y && apt-get upgrade -y && apt-get install git -y\
	&& export DEBIAN_FRONTEND=noninteractive \
	&& apt install apache2 -y \
	&& apt install mysql-server -y \
	&& apt -y -qq install php7.2 libapache2-mod-php7.2 php-mysql \
	&& service mysql start \
	&& echo "ALTER USER 'root'@'localhost' IDENTIFIED WITH 'mysql_native_password' BY 'root';FLUSH PRIVILEGES;" > file.txt \
	&& mysql -u root < file.txt \
	&& apt install phpmyadmin -y \
	&& echo "Include /etc/phpmyadmin/apache.conf \n ServerName localhost" >> /etc/apache2/apache2.conf \
	&& chmod -R 755 /var/lib/mysql/ \
	&& touch /var/run/mysqld/mysqld.sock \
	&& chown -R mysql /var/run/mysqld \
	&& git clone https://gitlab.com/yobenadda/scapache.git \
	&& mv scapache/run.sh .. \
	&& rm -f /var/www/html/index.html

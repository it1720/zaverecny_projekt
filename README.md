# Zoneminder instalace

sudo add-apt-repository ppa:iconnor/zoneminder-1.34
sudo apt-get update
apt install zoneminder

## Mysql Nastaveni

rm /etc/mysql/my.cnf 
cp /etc/mysql/mysql.conf.d/mysqld.cnf /etc/mysql/my.cnf
/etc/init.d/mysql start
mysql
ALTER USER 'root'@'localhost' IDENTIFIED BY 'yourpassword';
FLUSH PRIVILEGES ;
quit

## Vytvoření databáze 

mysql -uroot -p < /usr/share/zoneminder/db/zm_create.sql
mysql 
CREATE USER 'zmuser'@localhost IDENTIFIED BY 'zmpass'; 
GRANT ALL PRIVILEGES ON zm.* TO 'zmuser'@'localhost' WITH GRANT OPTION; 
FLUSH PRIVILEGES ; 
quit 
mysqladmin -uroot -p reload

## Nastavení Zoneminderu

chmod 740 /etc/zm/zm.conf
chown root:www-data /etc/zm/zm.conf 
adduser www-data video
a2enmod cgi 
a2enconf zoneminder
a2enmod rewrite 
a2enmod headers 

## Zapnutí serveru

systemctl enable zoneminder
service zoneminder start
service apache2 reload

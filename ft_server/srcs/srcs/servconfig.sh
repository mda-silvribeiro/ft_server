mkdir var/www/localhost

cp /root/nginx.conf /etc/nginx/sites-available/default

service mysql start
# Database e User do wordpres
echo "CREATE DATABASE phpmyadmin;" | mysql -u root
echo "CREATE USER 'mdasilv'@'localhost' IDENTIFIED BY '201998';" | mysql -u root
echo "GRANT ALL PRIVILEGES ON *.* TO 'mdasilv'@'localhost' WITH GRANT OPTION;" | mysql -u root
echo "FLUSH PRIVILEGES;" | mysql -u root

# Database e User do wordpress
echo "CREATE DATABASE wordpress;" | mysql -u root
echo "CREATE USER 'wordpress'@'localhost' IDENTIFIED BY '201998';" | mysql -u root
echo "GRANT ALL PRIVILEGES ON wordpress.* TO 'wordpress'@'localhost' WITH GRANT OPTION;" | mysql -u root
echo "FLUSH PRIVILEGES;" | mysql -u root;

wget https://wordpress.org/latest.tar.gz
tar -xzvf latest.tar.gz
rm -rf latest.tar.gz
cp /root/wp-config.php wordpress/wp-config.php
mv wordpress /var/www/localhost/

wget https://files.phpmyadmin.net/phpMyAdmin/5.0.2/phpMyAdmin-5.0.2-english.tar.gz
tar -xzvf phpMyAdmin-5.0.2-english.tar.gz
rm -rf phpMyAdmin-5.0.2-english.tar.gz
mv phpMyAdmin-5.0.2-english /var/www/localhost/phpmyadmin
chown -R www-data:www-data /var/www/localhost/phpmyadmin
cat /root/config.inc.php | sed -e "s/cfg['blowfish_secret'] = ''/cfg['blowfish_secret'] = '$randomBlowfishSecret'/" > config.inc.php
cp /root/config.inc.php /var/www/localhost/phpmyadmin/config.sample.inc.php

openssl req -newkey rsa:4096 -days 365 -nodes -x509 \
	-subj "/C=PT/ST=Lisbon/L=Lisbon/O=42lisboa/OU=42/CN=mdasilv" \
	-keyout localhost.dev.key \
	-out localhost.dev.crt 2>> /dev/null
mv localhost.dev.crt /etc/ssl/certs/
mv localhost.dev.key /etc/ssl/private/
chmod 600 /etc/ssl/certs/localhost.dev.crt /etc/ssl/private/localhost.dev.key
cp /root/info.php /var/www/localhost

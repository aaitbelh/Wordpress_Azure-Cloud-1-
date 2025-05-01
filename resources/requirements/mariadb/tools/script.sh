service mysql start
# mysql -u root -e "create database if not exists $DB_NAME;"#-p$DB_PASSWORD
# mysql -u root -e "create user if not exists '$DB_USER'@'%' identified by '$DB_PASSWORD';" #-p$DB_PASSWORD
# mysql -u root -e "GRANT ALL PRIVILEGES ON $DB_NAME.* TO '$DB_USER'@'%';" #-p$DB_PASSWORD
# mysql -u root -e "FLUSH PRIVILEGES;" #-p$DB_PASSWORD

mysql -u root -e -p$DB_PASSWORD "ALTER USER 'root'@'localhost' IDENTIFIED BY '$DB_PASSWORD'"
mysql -u root -p$DB_PASSWORD << EOF
create database if not exists $DB_NAME;
create user if not exists '$DB_USER'@'%' identified by '$DB_PASSWORD';
GRANT ALL PRIVILEGES ON $DB_NAME.* TO '$DB_USER'@'%';
FLUSH PRIVILEGES;
EOF
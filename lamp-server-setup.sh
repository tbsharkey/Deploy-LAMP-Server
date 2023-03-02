#!/bin/bash

# Install Apache, MySQL, and PHP
sudo apt-get update
sudo apt-get install apache2 mysql-server php libapache2-mod-php php-mysql -y

# Start and enable Apache and MySQL
sudo systemctl start apache2
sudo systemctl enable apache2
sudo systemctl start mysql
sudo systemctl enable mysql

# Configure MySQL
sudo mysql_secure_installation

# Create a test PHP file
sudo echo "<?php phpinfo(); ?>" > /var/www/html/info.php

# Restart Apache
sudo systemctl restart apache2

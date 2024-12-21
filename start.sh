#!/bin/bash

# Script: Install Manual LAMPP with phpMyAdmin on Debian 10
# Created by: Syahrul Ramadhan

# Update the system
echo "[INFO] Updating system packages..."
sudo apt update && sudo apt upgrade -y

# Install Apache
echo "[INFO] Installing Apache..."
sudo apt install apache2 -y

# Install PHP
echo "[INFO] Installing PHP..."
sudo apt install php php-cli php-mysql php-curl php-json php-cgi libapache2-mod-php -y

# Install MariaDB
echo "[INFO] Installing MariaDB..."
sudo apt install mariadb-server mariadb-client -y

# Secure MariaDB
echo "[INFO] Securing MariaDB..."
sudo mysql_secure_installation

# Download and install phpMyAdmin manually
echo "[INFO] Downloading phpMyAdmin..."
wget https://files.phpmyadmin.net/phpMyAdmin/5.2.1/phpMyAdmin-5.2.1-all-languages.zip -O /tmp/phpmyadmin.zip

# Extract phpMyAdmin
echo "[INFO] Extracting phpMyAdmin..."
sudo apt install unzip -y
sudo unzip /tmp/phpmyadmin.zip -d /var/www/html/
sudo mv /var/www/html/phpMyAdmin-5.2.1-all-languages /var/www/html/phpmyadmin

# Set permissions
echo "[INFO] Setting permissions for phpMyAdmin..."
sudo chown -R www-data:www-data /var/www/html/phpmyadmin
sudo chmod -R 755 /var/www/html/phpmyadmin

# Restart Apache
echo "[INFO] Restarting Apache..."
sudo systemctl restart apache2

# Enable Apache and MariaDB to start on boot
echo "[INFO] Enabling Apache and MariaDB to start on boot..."
sudo systemctl enable apache2
sudo systemctl enable mariadb

# Cleanup
echo "[INFO] Cleaning up..."
sudo rm -f /tmp/phpmyadmin.zip

# Print installation summary
echo "[INFO] LAMPP installed successfully!"
echo "[INFO] Access your server at http://localhost atau http://ipkamu"
echo "[INFO] Access phpMyAdmin at http://localhost/phpmyadmin atau http://ipkamu/phpmyadmin"
echo "[INFO] Created by C-Tech Indonesia."

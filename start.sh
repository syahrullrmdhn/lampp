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

# Install phpMyAdmin
echo "[INFO] Installing phpMyAdmin..."
sudo apt install phpmyadmin -y

# Configure Apache for phpMyAdmin
echo "[INFO] Configuring Apache for phpMyAdmin..."
sudo ln -s /usr/share/phpmyadmin /var/www/html/phpmyadmin
sudo systemctl restart apache2

# Enable Apache and MariaDB to start on boot
echo "[INFO] Enabling Apache and MariaDB to start on boot..."
sudo systemctl enable apache2
sudo systemctl enable mariadb

# Print installation summary
echo "[INFO] LAMPP installed successfully!"
echo "[INFO] Access your server at http://localhost"
echo "[INFO] Access phpMyAdmin at http://localhost/phpmyadmin"
echo "[INFO] Created by C-Tech Indonesia."

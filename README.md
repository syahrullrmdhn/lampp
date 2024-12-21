# LAMPP Installation Script for Debian 10

This repository contains a Bash script for manually setting up LAMPP (Linux, Apache, MariaDB, PHP, and phpMyAdmin) on Debian 10.

## Features
- Installs and configures:
  - Apache
  - PHP
  - MariaDB
  - phpMyAdmin (downloaded manually from the official source)
- Configures permissions for phpMyAdmin.
- Enables Apache and MariaDB to start on system boot.
- Cleans up unnecessary files after installation.

## Requirements
- Debian 10
- Sudo privileges
- Internet connection

## Installation

1. Clone this repository or download the script directly:
   ```bash
   git clone https://github.com/syahrullrmdhn/lampp
   cd lampp
   ```

2. Make the script executable:
   ```bash
   chmod +x start.sh
   ```

3. Run the script:
   ```bash
   sudo ./start.sh
   ```

## Accessing the Services

- **Apache Server:** [http://localhost](http://localhost)
- **phpMyAdmin:** [http://localhost/phpmyadmin](http://localhost/phpmyadmin)

## Script Details

### 1. Apache Installation
Installs the Apache web server using the package manager and ensures it starts on boot.

### 2. PHP Installation
Includes common PHP extensions such as `php-mysql` and `libapache2-mod-php` for web development.

### 3. MariaDB Installation
Sets up the MariaDB database server, including running the secure installation script for initial configuration.

### 4. phpMyAdmin Manual Installation
Downloads phpMyAdmin from the [official website](https://www.phpmyadmin.net/) and extracts it to `/var/www/html/phpmyadmin`. Proper permissions are set for smooth operation.

### 5. Cleanup
Temporary files such as the phpMyAdmin ZIP archive are removed to save space.

## Notes
- Ensure you run the script as a user with sudo privileges.
- Modify the script if necessary to fit your specific environment.

## Author
Created by **Syahrul Ramadhan**.

## License
This project is licensed under the MIT License. See the LICENSE file for details.

## Contributions
Contributions, issues, and feature requests are welcome! Feel free to fork the repository and submit a pull request.

---

Enjoy your LAMPP stack setup! 🎉


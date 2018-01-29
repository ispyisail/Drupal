#!/bin/bash

#This script is for Ubuntu Server 14.04 and Drupal 7

# 1. To install lamp server on ubuntu 14.04

    sudo apt-get update && sudo apt-get upgrade -y
    sudo apt-get install tasksel -y
    sudo tasksel install lamp-server

# 2. Install package named `drush` ( drush = Drupal shell, To download latest version of Drupal via command line)

    sudo apt-get install drush php-xml -y

# 3. Change working directory to /var/www/html

    cd /var/www/html

# 4. Select and Download the latest version of Drupal
	
    sudo drush dl drupal-7
    cd ./drupal*
    
# 5. Change the ownership of root directory for server(ie /var/www/html)

     sudo chown -R www-data /var/www/html

# 6. Install package named `composer`. 
     # Composer is a PHP package management tool to help manage your project or libraries' dependencies. 
    
     sudo apt-get install composer -y
     
# 7. Install `phpmyadmin`
     
    # sudo apt-get install phpmyadmin -y

# 8. Open phpmyadmin at http://localhost/phpmyadmin Optional

# 9. Create mysql database
	# https://gist.github.com/BetaStacks/86f8aae4de8ac7b087e7683e65ce25fc
	# The script will fail at the first error encountered
	
	set -e


	echo "Type the name for your database, followed by [ENTER]:"
	read DB

	echo "Type the username for your database, followed by [ENTER]:"
	read USR

	echo "Type the password for your new user, followed by [ENTER]:"
	read PASS

	echo "Type MySQL ROOT password, followed by [ENTER]:"


	sudo mysql mysql -p <<MYSQL_SCRIPT

	CREATE DATABASE $DB;
	CREATE USER '$USR'@'localhost' IDENTIFIED BY '$PASS';
	GRANT ALL PRIVILEGES ON $DB.* TO '$USR'@'localhost';
	FLUSH PRIVILEGES;
MYSQL_SCRIPT

	echo "MySQL user created."
	echo "Database:   $DB"
	echo "Username:   $USR"
	echo "Password:   $PASS"

     
# 10. en the link http://localhost/drupal*/ and follow the installation steps. 
     # Resolve the errors (if any) by reading documentation at /var/www/html/drupal*/core/INSTALL.txt
    

# 11 Provide your mysql username, password and databasename ("drupal" in our case) on your drupal installation page.

# 12 Set administrator username and password. Drupal is now installed and running.

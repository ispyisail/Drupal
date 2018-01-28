#!/bin/bash

# 1. To install lamp server on ubuntu 16.04

    sudo apt-get update && sudo apt-get upgrade -y
    sudo apt-get install tasksel
    sudo tasksel install lamp-server

# 2. Install package named `drush` ( drush = Drupal shell, To download latest version of Drupal via command line)

    sudo apt-get install drush php-xml

# 3. Change working directory to /var/www/html

    cd /var/www/html

# 4. Select and Download the latest version of Drupal

    sudo drush dl drupal-8 --select
    cd ./drupal*
    
# 5. Change the ownership of root directory for server(ie /var/www/html)

     sudo chown -R www-data /var/www/html

# 6. Install package named `composer`. 
     # Composer is a PHP package management tool to help manage your project or libraries' dependencies. 
    
     sudo apt-get install composer
     
# 7. Install `phpmyadmin`
     
     sudo apt-get install phpmyadmin

# 8. Open phpmyadmin at http://localhost/phpmyadmin and create a database named drupal (Required for Drupal Installation)

     
# 9. Open the link http://localhost/drupal*/ and follow the installation steps. 
     # Resolve the errors (if any) by reading documentation at /var/www/html/drupal*/core/INSTALL.txt
    

# 10. Provide your mysql username, password and databasename ("drupal" in our case) on your drupal installation page.

# 11. Set administrator username and password. Drupal is now installed and running.

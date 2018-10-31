##############################################################
# Creator: Necrolord
# Version: 0.0.1
# Date: 12/10/2018
# Goal: LAMP Server installation.
# Additional Notes: Please refer the ADDITIONAL NOTES file.
##############################################################

# Installation of a web server.
Install_Httpd () {
sudo dnf install httpd
sudo systemctl start httpd.service
sudo systemctl enable httpd.service
}

#Installation of MySQL server.
Install_Mariadb () {
sudo dnf install mariadb-server mariadb
sudo systemctl start mariadb
sudo mysql_secure_installation
sudo systemctl enable mariadb.service
}

# Installation of PHP language.
Install_Php () {
sudo dnf install php
sudo systemctl restart httpd.service
sudo printf "<?php phpinfo(); ?>" > /var/www/html/info.php
}

Install_Httpd
Install_Php
Install_Mariadb

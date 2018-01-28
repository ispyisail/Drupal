-----------------------------------------------------------------------------------
Install
-----------------------------------------------------------------------------------

sudo wget https://github.com/ispyisail/Drupal/archive/master.zip

sudo apt-get install unzip

sudo unzip -p master.zip Drupal-master/installscript.sh >installscript.sh

chmod u+x installscript.sh

./installscript.sh

-----------------------------------------------------------------------------------
Install
-----------------------------------------------------------------------------------

sudo wget https://github.com/ispyisail/Drupal/archive/master.zip

sudo apt-get install unzip

sudo unzip -p master.zip Drupal-master/Install_16_v8.sh >Install_16_v8.sh

chmod u+x Install_16_v8.sh

./Install_16_v8.sh

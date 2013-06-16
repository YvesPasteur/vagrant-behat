#!/bin/bash

orig_path="/vagrant/cookbook/selenium-server-standalone-2.33.0.jar"
dest_path="/opt/selenium-server-standalone.jar"
logfile="/var/log/selenium-server.log"
launchfile="/opt/launch_selenium.sh"

if [ -e $dest_path ]; then
    echo "Selenium is already installed"
else
    echo "Install selenium"
    cp $orig_path $dest_path
fi

if [ -e $logfile ]; then
    echo "Selenium logs file already exists"
else
    echo "Create selenium logs file"
    sudo touch $logfile
    sudo chown vagrant:vagrant $logfile
fi

if [ -e $launchfile ]; then
    echo "Selenium launch script file already exists"
else
    echo "Create selenium launch script file"
    echo "" >> $launchfile
    echo "#!/bin/bash" >> $launchfile
    echo "export DISPLAY=:0" >> $launchfile
    echo "java -jar $dest_path 1>>$logfile 2>>$logfile &" >> $launchfile
    echo "Selenium launched"
    sudo chown vagrant:vagrant $logfile
    sudo chmod a+x $launchfile
fi

#start selenium server
if ps aux | grep "[j]ava -jar $dest_path" &>/dev/null; then
    echo "Selenium already launched"
else
    echo "Launch Selenium"
    sudo -Hu vagrant $launchfile
fi

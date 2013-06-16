#!/bin/bash
export DISPLAY=:0
logfile="/var/log/selenium-server.log"
dest_path="/opt/selenium-server-standalone.jar"
sudo -u vagrant java -jar $dest_path 1>>$logfile 2>>$logfile &

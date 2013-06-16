#!/bin/bash

if type -P php &>/dev/null; then
    echo "php is already installed";
else
    # install php5.4
    sudo apt-get update
    sudo apt-get install -y python-software-properties
    sudo add-apt-repository -y ppa:ondrej/php5
    sudo apt-get update
    sudo apt-get install -y php5 
fi


if php -m | grep curl &>/dev/null; then
   echo "php5-curl is already installed";
else
    # install curl module
    sudo apt-get install -y php5-curl
fi

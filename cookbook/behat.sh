#!/bin/bash

cd /vagrant
if [ -d "behat" ]; then
    echo "Behat directory already exists"
else
    echo "Create Behat directory"
    mkdir behat
fi

cd behat

if [ -e "composer.json" ]; then
    echo "composer.json already exists"
else
    echo "Copy composer.json"
    cp /vagrant/cookbook/composer.json .
fi

if [ -e "composer.lock" ]; then
    echo "Remove composer.lock"
    rm composer.lock
fi

composer install

if ! type -P ./bin/behat &>/dev/null; then
    echo "Error in the Behat installation";
    exit 1;
fi


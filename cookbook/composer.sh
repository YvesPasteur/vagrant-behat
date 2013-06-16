#!/bin/bash

if type -P composer &>/dev/null; then
    echo "Composer is already installed";
else
    curl -sS https://getcomposer.org/installer | php
    sudo mv composer.phar /usr/local/bin/composer
fi


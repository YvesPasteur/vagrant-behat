#!/bin/bash

if type -P firefox &>/dev/null; then
    echo "Firefox is already installed";
else
    echo "Install firefox"
    sudo apt-get install -y firefox
fi

#sudo reboot

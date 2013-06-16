#!/bin/bash

if type -P startx &>/dev/null; then
    echo "GUI is already installed";
else
    echo "Install minimal GUI"
    sudo apt-get install -y --no-install-recommends lubuntu-desktop
fi

if grep "autologin-user=" /etc/lightdm/lightdm.conf &>/dev/null; then
    echo "Autologin already enable"
else
    echo "Enable autologin"
    sudo printf "autologin-user=vagrant\n" >> /etc/lightdm/lightdm.conf
fi

if grep "autologin-user-timeout" /etc/lightdm/lightdm.conf &>/dev/null; then
    echo "Autologin timeout already defined"
else
    echo "Define autologin"
    sudo printf "autologin-user-timeout=0\n" >> /etc/lightdm/lightdm.conf
fi

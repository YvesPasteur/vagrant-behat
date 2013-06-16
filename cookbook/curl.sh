#!/bin/bash

if type -P curl &>/dev/null; then
    echo "curl is already installed";
else
    sudo apt-get install -y curl
fi


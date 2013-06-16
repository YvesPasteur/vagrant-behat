#!/bin/bash

if type -P java &>/dev/null; then
    echo "java is already installed";
else
    echo "Install java"
    sudo apt-get install -y openjdk-7-jdk
fi


#!/bin/bash

# Update and upgrade packages
sudo apt update && sudo apt upgrade -y

# Install Python3 pip
sudo apt-get install python3-pip -y

# Install Python3 picamera module
sudo -H apt install python3-picamera -y

# Upgrade picamera[array] using pip3
sudo -H pip3 install --upgrade picamera[array]

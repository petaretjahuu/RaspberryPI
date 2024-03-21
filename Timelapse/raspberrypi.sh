#!/bin/bash

# Update package lists and upgrade installed packages
sudo apt update && sudo apt upgrade -y

# Install rsync for file synchronization
sudo apt install rsync -y

# Install sshpass for non-interactive ssh login
sudo apt install sshpass -y

# Generate SSH key pair without passphrase
ssh-keygen -f ~/.ssh/id_rsa -q -P ""

# Create directory for captures and set permissions
mkdir -p /home/timelapse/captures
chmod ugo+rwx /home/timelapse/captures

#!/bin/bash

# Update Packages
yum update -y

# Install nano
yum install nano -y

# Install rsync
yum install rsync -y

# Secure SSH Configuration
mkdir -p ~/.ssh
chmod 0700 ~/.ssh
touch ~/.ssh/authorized_keys
chmod 0644 ~/.ssh/authorized_keys

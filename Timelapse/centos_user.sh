#!/bin/bash

# Add user "timelapse" and add it to the "wheel" group with sudo privileges
sudo useradd timelapse && echo "timelapse:timelapse" | sudo chpasswd && sudo usermod -aG wheel timelapse

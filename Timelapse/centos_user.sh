#!/bin/bash

# Add user "timelapse" and add it to the "wheel" group with sudo privileges
sudo useradd -m -p $(openssl passwd -1 timelapse) timelapse && sudo usermod -aG wheel timelapse

#!/bin/bash

# Add user "timelapse" and add it to the "wheel" group with sudo privileges
sudo adduser timelapse && sudo usermod -aG wheel timelapse

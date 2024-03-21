#!/bin/bash

# Set the current date (for directory and file name) and time (for file name)
current_datetime=$(date +"%Y%m%d-%H%M%S")
current_date=$(date +"%Y-%m-%d")

# Define the local directory where images will be stored
local_dir="/home/timelapse/captures/$current_date"

# Create the local directory if it doesn't exist
mkdir -p "$local_dir"

# Capture an image from the camera and save it with the current date and time as the filename
# Using Raspberry Pi Camera Module
raspistill -w 2296 -h 1724 -o "$local_dir/$current_datetime.jpg"
# Using webcam
#ffmpeg -f video4linux2 -i /dev/video0 -vframes 1 "$local_dir/$current_datetime.jpg"

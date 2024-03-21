#!/bin/bash

# Check if script is executed as root
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 
   exit 1
fi

# Check if the user already exists
if id "timelapse" &>/dev/null; then
    echo "User 'timelapse' already exists."
else
    # Create the user
    useradd -m -s /bin/bash timelapse
    
    # Set the password
    echo "timelapse:timelapse" | chpasswd
    
    # Display success message
    echo "User 'timelapse' created successfully with password 'timelapse'."
fi

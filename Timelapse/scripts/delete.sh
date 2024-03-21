#!/bin/bash

# Delete old images - Change the number (30) to specify the number of days
# The following command finds directories in /home/timelapse/captures/ that are older than 30 days and deletes them
find /home/timelapse/captures/* -type d -mtime +30 -exec rm -r {} \;

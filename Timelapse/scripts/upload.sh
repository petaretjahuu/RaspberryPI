#!/bin/bash

# Upload the local directory to the CentOS server
# Use local for testing and DDNS for production
# Replace [IP-ADDRESS] with local CentOS IP address and [DDNS-DOMAIN] with DDNS domain (e.g. user.noip.com)

##### Local
# rsync -avv -e "sshpass -p timelapse ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null" /home/timelapse/captures timelapse@[IP-ADDRESS]:/home/timelapse/
##### DDNS
rsync -avv -e "sshpass -p timelapse ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null" /home/timelapse/captures timelapse@[DDNS-DOMAIN]:/home/timelapse/

#!/bin/bash

# Resizes the current swapfile to 16GB

# Referenced: https://www.digitalocean.com/community/questions/how-to-change-swap-size-on-ubuntu-14-04
# Referenced: https://www.cyberciti.biz/faq/linux-unix-dd-command-show-progress-while-coping/
sudo swapoff -a
sudo dd if=/dev/zero of=/swapfile bs=1G count=32 status=progress
sudo mkswap /swapfile
sudo swapon /swapfile
free -h
swapon

# Add this to /etc/fstab and comment out the existing entry for the swap pertition
# /swapfile    none    swap    sw    0    0


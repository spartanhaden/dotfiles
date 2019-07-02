#!/bin/bash

# Resizes the current swapfile to 16GB

#referenced: https://www.digitalocean.com/community/questions/how-to-change-swap-size-on-ubuntu-14-04
#referenced: https://www.cyberciti.biz/faq/linux-unix-dd-command-show-progress-while-coping/
sudo swapoff -a
sudo dd if=/dev/zero of=/swapfile bs=1G count=16 status=progress
sudo mkswap /swapfile
sudo swapon /swapfile
free -h
swapon

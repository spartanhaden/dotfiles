#!/bin/bash

# Setup Chrome PPA
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google-chrome.list'

sudo apt update
sudo apt install -y \
  sl \
  tree \
  nano \
  htop \
  net-tools \
  openssh-server \
  sshfs \
  gnome-tweaks \
  dconf-editor \
  git \
  xclip \
  arc-theme \
  papirus-icon-theme \
  google-chrome-stable \
  vlc \
  wireshark \
  nmap \
  ffmpeg \
  handbrake \
  iotop \
  expect \
  tig \
  zsh \
  byobu
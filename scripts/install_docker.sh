#!/bin/bash

# Install Docker
# From: https://docs.docker.com/install/linux/docker-ce/ubuntu

sudo apt update

sudo apt install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo apt-key fingerprint 0EBFCD88

sudo add-apt-repository \
    "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
    $(lsb_release -cs) \
    stable"

sudo apt update

sudo apt install -y \
    docker-ce \
    docker-ce-cli \
    containerd.io

sudo docker run hello-world

# Docker post install
# From: https://docs.docker.com/install/linux/linux-postinstall

sudo groupadd docker
sudo usermod -aG docker $USER


# Setup and install nvidia-container-runtime
# From: https://nvidia.github.io/nvidia-container-runtime

curl -s -L https://nvidia.github.io/nvidia-container-runtime/gpgkey | \
  sudo apt-key add -
distribution=$(. /etc/os-release;echo $ID$VERSION_ID)
curl -s -L https://nvidia.github.io/nvidia-container-runtime/$distribution/nvidia-container-runtime.list | \
  sudo tee /etc/apt/sources.list.d/nvidia-container-runtime.list
sudo apt-get update

# Install nvidia-container-runtime
# From: https://github.com/NVIDIA/nvidia-container-runtime

sudo apt install -y nvidia-container-runtime

sudo systemctl restart docker.service

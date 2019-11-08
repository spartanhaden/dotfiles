#!/bin/bash

# Install my commonly used packages
./install_packages.sh

# Change some gnome settings
./gsettings.sh

# Set ZSH as the default shell
chsh -s $(which zsh)

# Install oh My Zsh
sh -c "$(wget -O- https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

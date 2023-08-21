#!/bin/bash

# Install my commonly used packages
./install_packages.sh

# Sets up vscode
./vs_code_setup.sh

# Change some gnome settings
./gsettings.sh

# Set ZSH as the default shell
chsh -s $(which zsh)

# Install oh My Zsh
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

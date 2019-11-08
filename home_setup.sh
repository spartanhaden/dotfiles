#!/bin/bash

# Run core setup
./setup.sh

# Add custom stuff to zshrc
echo "source ~/dotfiles/home_zshrc.sh" >> ~/.zshrc

# Set home specific settings
./gsettings_home.sh

#!/bin/bash

#----App Switching----
# From: https://askubuntu.com/questions/464946/force-alt-tab-to-switch-only-on-current-workspace-in-gnome-shell
# NOT NEEDED when tabbing is set to between windows
gsettings set org.gnome.shell.app-switcher current-workspace-only true

#----Mouse Acceleration----
# From: https://www.linuxuprising.com/2018/09/how-to-disable-mouse-acceleration-in.html
# Alternatively: In Gnome Tweaks set Keyboard & Mouse -> Mouse -> Acceleration Profile to Flat
gsettings set org.gnome.desktop.peripherals.mouse accel-profile flat

#----Mouse Speed----
# Sets the mouse speed to 0.75 in the range between -1 and 1
gsettings set org.gnome.desktop.peripherals.mouse speed 0.75

#----Theme----
# Sets the theme to Arc-Dark and icons to Papirus
#gsettings set org.gnome.desktop.interface gtk-theme Adwaita-dark
gsettings set org.gnome.desktop.interface gtk-theme Arc-Dark
gsettings set org.gnome.desktop.interface icon-theme Papirus

#----Hot Corners
# Shows the overview when the mouse is in the top left corner
gsettings set org.gnome.shell enable-hot-corners true

#----Battery----
# Shows the battery all the time in the top right corner if there is one
gsettings set org.gnome.desktop.interface show-battery-percentage true

#----Desktop Icons----
# Hides the icons from the desktop
gsettings set org.gnome.desktop.background show-desktop-icons false

# Disables sticky edges when using multiple monitors
gsettings set org.gnome.shell.overrides edge-tiling false

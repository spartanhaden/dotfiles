#!/bin/bash

# Run this script with sudo
# From: https://askubuntu.com/questions/1040119/dell-latitude-5590-how-to-scroll-with-central-button
echo '
Section "InputClass"
        Identifier "libinput pointer catchall"
        MatchIsPointer "on"
        MatchDevicePath "/dev/input/event*"
        Driver "libinput"
        Option "ScrollMethod" "button"
        Option "ScrollButton" "2"
EndSection' >> /usr/share/X11/xorg.conf.d/40-libinput.conf

# turns off two finger scrolling
gsettings set org.gnome.desktop.peripherals.touchpad two-finger-scrolling-enabled false

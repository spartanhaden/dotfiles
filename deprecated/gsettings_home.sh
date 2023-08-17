#!/bin/bash

#----Scaling----
# Set scaling to 1.5x for UHD monitors and make the mouse bigger
# From: https://www.reddit.com/r/linux/comments/8bt4eg/oh_cool_i_can_scale_my_display_300_but_not_125/e3c0asi
# Eventually: https://www.linuxuprising.com/2019/04/how-to-enable-hidpi-fractional-scaling.html
gsettings set org.gnome.desktop.interface text-scaling-factor 1.5
gsettings set org.gnome.desktop.interface cursor-size 36

#!/bin/bash

# Turns on mouse keys
gsettings set org.gnome.desktop.a11y.keyboard mousekeys-enable true

# Lists the values of mousekeys properties
gsettings list-recursively | grep mousekeys

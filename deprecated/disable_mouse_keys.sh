#!/bin/bash

# Turns off mouse keys
gsettings set org.gnome.desktop.a11y.keyboard mousekeys-enable false

# Lists the values of mousekeys properties
gsettings list-recursively | grep mousekeys

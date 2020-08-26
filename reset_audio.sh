#!/bin/bash

# Reinitialize audio after losing devices.
# This typically happens after waking from sleep.
# From: https://askubuntu.com/questions/230888/is-there-another-way-to-restart-the-sound-system-if-pulseaudio-alsa-dont-work
pulseaudio -k && sudo alsa force-reload

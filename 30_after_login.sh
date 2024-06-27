#!/bin/bash

source setup_script_exit.sh
setup_script_exit

# ACPI
systemctl enable --now acpid

# Printing
systemctl enable --now avahi-daemon
systemctl enable --now cups

# First make sure to edit your monitor configuration
# Logout and relogin afterwards
sudo cp ~/.config/monitors.xml ~gdm/.config/
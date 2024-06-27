#!/bin/bash

source setup_script_exit.sh
setup_script_exit

# Update package list and upgrade all currently installed repo and AUR.
sudo pacman -Syu

sudo pacman -S --noconfirm --needed --disable-download-timeout git nano linux-zen-headers
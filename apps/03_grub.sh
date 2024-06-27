#!/bin/bash

source ../setup_script_exit.sh
setup_script_exit

# Grub config
yay -S --noconfirm --needed --disable-download-timeout grub-customizer grub-theme-arch-linux

# configure grub when in desktop
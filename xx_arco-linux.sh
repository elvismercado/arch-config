#!/bin/bash

# Arco Linux

source script_exit_utils.sh
setup_script_exit

# Arco Linux Repos (ArcoLinux Spices)
mkdir -pv /tmp && cd /tmp
git clone https://github.com/arcolinux/arcolinux-spices
cd arcolinux-spices/usr/share/arcolinux-spices/scripts
sudo ./get-the-keys-and-repos.sh


# sudo pacman -S --needed --noconfirm --disable-download-timeout

# # Apps from Arco Linux
# variety
# arcolinux tweak tool
# arcolinux conkyzen
# arcolinux betterlockscreen
# # arcolinux app

# multiwriter
# istopo
# iconbrowser
# pamac
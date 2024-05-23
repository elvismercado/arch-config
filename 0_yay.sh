#!/bin/bash

# Install yay
# https://github.com/Jguer/yay

source setup_script_exit.sh
setup_script_exit

sudo pacman -S --noconfirm --needed --disable-download-timeout git base-devel

mkdir -pv /tmp && cd /tmp
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm --needed

yay -Y --gendb
yay -Syu --devel
yay -Y --devel --save

rm -rf /tmp/yay
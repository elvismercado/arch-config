#!/bin/bash

# Install yay

source script_exit_utils.sh
setup_script_exit

sudo pacman -S --noconfirm --needed --disable-download-timeout base-devel linux-zen-headers git nano

mkdir -pv /tmp && cd /tmp
git clone https://aur.archlinux.org/yay.git
cd yay

makepkg -si

rm -rf /tmp/yay
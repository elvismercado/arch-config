#!/bin/bash

# Nvidia drivers in Case of GNOME

# https://wiki.archlinux.org/title/NVIDIA
# https://github.com/korvahannu/arch-nvidia-drivers-installation-guide

source setup_script_exit.sh
setup_script_exit

# linux-zen-headers
sudo pacman -Rns --noconfirm nvidia nvidia-utils lib32-nvidia-utils nvidia-dkms nvidia-utils

yay -S --noconfirm --needed --disable-download-timeout nvidia-470xx-dkms nvidia-470xx-utils lib32-nvidia-470xx-utils
yay -S --noconfirm --needed --disable-download-timeout nvidia-settings nvidia-tweaks

# check multilib repo
# `/etc/pacman.conf`

# Kernel Parameter
sudo sed -i 's/\(GRUB_CMDLINE_LINUX_DEFAULT=".*\)"/\1 nvidia-drm.modeset=1"/' /etc/default/grub
sudo grub-mkconfig -o /boot/grub/grub.cfg

# Early Loading of NVIDIA Modules
sudo sed -i 's/\(MODULES=([^)]*\))/\1 nvidia nvidia_modeset nvidia_uvm nvidia_drm)/' /etc/mkinitcpio.conf
sed -i 's/\(HOOKS=\([^)]*\)kms \([^)]*\)\)/\1\2/)\/g' /etc/mkinitcpio.conf
sudo mkinitcpio -P

# Pacman Hook
sudo mkdir -pv /etc/pacman.d/hooks/
sudo cp "./geforce-gt-730/nvidia.hook" /etc/pacman.d/hooks/
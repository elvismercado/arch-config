#!/bin/bash

# Nvidia drivers

# https://wiki.archlinux.org/title/NVIDIA
# https://github.com/korvahannu/arch-nvidia-drivers-installation-guide

yay -S --noconfirm --needed --disable-download-timeout nvidia-470xx-dkms nvidia-470xx-utils lib32-nvidia-470xx-utils nvidia-tweaks nvidia-settings

sudo sed -i 's/\(GRUB_CMDLINE_LINUX_DEFAULT=".*\)"/\1 nvidia-drm.modeset=1"/' /etc/default/grub
sudo grub-mkconfig -o /boot/grub/grub.cfg

sed -i 's/\(MODULES=([^)]*\))/\1 nvidia nvidia_modeset nvidia_uvm nvidia_drm/' /etc/mkinitcpio.conf
sudo mkinitcpio -P

sudo cp "./geforce-gt-730/nvidia.hook" /etc/pacman.d/hooks/
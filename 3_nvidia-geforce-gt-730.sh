#!/bin/bash

# Nvidia drivers in case of GeForce GT 730

# https://wiki.archlinux.org/title/NVIDIA
# https://github.com/korvahannu/arch-nvidia-drivers-installation-guide

source setup_script_exit.sh
setup_script_exit

# Allowing user to confirm questions as conflicting packages may cause issues
yay -S --needed --disable-download-timeout --removemake nvidia-470xx-dkms nvidia-470xx-utils lib32-nvidia-470xx-utils
# yay -S --needed --disable-download-timeout --removemake nvidia-settings nvidia-tweaks

# check multilib repo
# `/etc/pacman.conf`

# Kernel Parameter
sudo sed -i 's/\(GRUB_CMDLINE_LINUX_DEFAULT=".*\)"/\1 nvidia-drm.modeset=1"/' /etc/default/grub
sudo grub-mkconfig -o /boot/grub/grub.cfg

# Early Loading of NVIDIA Modules
sudo sed -i 's/\(MODULES=([^)]*\))/\1 nvidia nvidia_modeset nvidia_uvm nvidia_drm)/' /etc/mkinitcpio.conf
# sed -i 's/\(HOOKS=\([^)]*\)kms \([^)]*\)\)/\1\2/)\/g' /etc/mkinitcpio.conf
sudo mkinitcpio -P

# Pacman Hook
sudo mkdir -pv /etc/pacman.d/hooks/
sudo cp -v ./geforce-gt-730/nvidia.hook /etc/pacman.d/hooks/

# making sure wayland is available
# ln -s /dev/null /etc/udev/rules.d/61-gdm.rules

# Fix text disappearing
# https://bbs.archlinux.org/viewtopic.php?id=295693
sudo echo "# If you are using GTK on very old hardware, you may be better off with the old GL renderer, since it makes fewer demands on the GPU." >> /etc/environment
sudo echo "# You can override the renderer selection using the GSK_RENDERER environment variable:" >> /etc/environment
sudo echo "GSK_RENDERER=gl" >> /etc/environment
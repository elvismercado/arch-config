#!/bin/bash

# Install GNOME minimal
# sudo pacman -S --needed --noconfirm --disable-download-timeout gnome
# sudo pacman -S --needed --noconfirm --disable-download-timeout gnome-tweaks # Graphical interface for advanced GNOME 3 settings (Tweak Tool)

# Native browser connector for integration with extensions.gnome.org
yay -S --needed --noconfirm --disable-download-timeout gnome-browser-connector
yay -S --needed --noconfirm --disable-download-timeout gdm-settings

# Set window appmenu buttons
gsettings set org.gnome.desktop.wm.preferences button-layout 'appmenu:minimize,maximize,close'

# Set color scheme
gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'

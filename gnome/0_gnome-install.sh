#!/bin/bash

# Install GNOME minimal
sudo pacman -S --needed --noconfirm --disable-download-timeout gnome-shell
sudo pacman -S --needed --noconfirm --disable-download-timeout gnome-tweaks # Graphical interface for advanced GNOME 3 settings (Tweak Tool)
sudo pacman -S --needed --noconfirm --disable-download-timeout gnome-shell-extensions # Extensions for GNOME shell, including classic mode
sudo pacman -S --needed --noconfirm --disable-download-timeout gnome-browser-connector # Native browser connector for integration with extensions.gnome.org

# Set window appmenu buttons
gsettings set org.gnome.desktop.wm.preferences button-layout 'appmenu:minimize,maximize,close'

# Set color scheme
gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'

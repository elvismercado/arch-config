#!/bin/bash

# Install GNOME
sudo pacman -S --needed --noconfirm --disable-download-timeout gnome-shell
sudo pacman -S --needed --noconfirm --disable-download-timeout gnome-tweaks
sudo pacman -S --needed --noconfirm --disable-download-timeout gnome-shell-extensions
sudo pacman -S --needed --noconfirm --disable-download-timeout gnome-browser-connector

gsettings set org.gnome.desktop.wm.preferences button-layout 'appmenu:minimize,maximize,close'
gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'

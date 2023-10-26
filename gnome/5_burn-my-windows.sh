#!/bin/bash

# Burn my Windows

mkdir -pv /tmp && cd /tmp
git clone https://github.com/elvismercado/arch-config.git
cd /tmp/arch-config

mkdir -pv ~/.config/burn-my-windows/profiles
cp -Rv ./gnome/burn-my-windows/* ~/.config/burn-my-windows/profiles

gnome-extensions reset burn-my-windows@schneegans.github.com

gnome-extensions disable burn-my-windows@schneegans.github.com
gnome-extensions enable burn-my-windows@schneegans.github.com

echo "burn-my-windows=> delete the standard profile after"

rm -rf /tmp/arch-config

nautilus ~/.config/burn-my-windows/profiles
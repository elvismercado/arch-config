#!/bin/bash

# Burn my Windows

extensionName=burn-my-windows@schneegans.github.com

mkdir -pv /tmp && cd /tmp
git clone https://github.com/elvismercado/arch-config.git
cd /tmp/arch-config

mkdir -pv ~/.config/burn-my-windows/profiles
cp -Rv ./gnome/burn-my-windows/* ~/.config/burn-my-windows/profiles

gnome-extensions reset $extensionName

gnome-extensions disable $extensionName
gnome-extensions enable $extensionName

echo "burn-my-windows=> delete the standard profile after"

rm -rf /tmp/arch-config

nautilus ~/.config/burn-my-windows/profiles
#!/bin/bash

# Blur my Shell

extensionName=blur-my-shell@aunetx

gnome-extensions reset $extensionName

dconf write /org/gnome/shell/extensions/blur-my-shell/noise-amount "0.05"
dconf write /org/gnome/shell/extensions/blur-my-shell/panel/static-blur "true"

gnome-extensions disable $extensionName
gnome-extensions enable $extensionName
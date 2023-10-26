#!/bin/bash

# Blur my Shell

gnome-extensions reset blur-my-shell@aunetx

dconf write /org/gnome/shell/extensions/blur-my-shell/noise-amount "0.05"
dconf write /org/gnome/shell/extensions/blur-my-shell/panel/static-blur "true"

gnome-extensions disable blur-my-shell@aunetx
gnome-extensions enable blur-my-shell@aunetx
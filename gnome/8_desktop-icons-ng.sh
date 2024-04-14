#!/bin/bash

# Caffeine

gnome-extensions reset ding@rastersoft.com

dconf write /org/gnome/shell/extensions/ding/show-network-volumes "true"

gnome-extensions disable ding@rastersoft.com
gnome-extensions enable ding@rastersoft.com
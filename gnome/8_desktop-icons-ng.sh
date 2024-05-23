#!/bin/bash

# Desktop Icons NG

extensionName=ding@rastersoft.com

gnome-extensions reset $extensionName

dconf write /org/gnome/shell/extensions/ding/show-network-volumes "true"

gnome-extensions disable $extensionName
gnome-extensions enable $extensionName
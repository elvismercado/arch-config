#!/bin/bash

# Dash2Dock Lite

extensionName=dash2dock-lite@icedman.github.com

gnome-extensions reset $extensionName

dconf write /org/gnome/shell/extensions/dash2dock-lite/autohide-dash "true"
dconf write /org/gnome/shell/extensions/dash2dock-lite/open-app-animation "true"
dconf write /org/gnome/shell/extensions/dash2dock-lite/running-indicator-style "3"
dconf write /org/gnome/shell/extensions/dash2dock-lite/notification-badge-style "1"
dconf write /org/gnome/shell/extensions/dash2dock-lite/animation-magnify "0.5"
dconf write /org/gnome/shell/extensions/dash2dock-lite/animation-rise "0.5"
dconf write /org/gnome/shell/extensions/dash2dock-lite/border-radius "2.5"

gnome-extensions disable $extensionName
gnome-extensions enable $extensionName
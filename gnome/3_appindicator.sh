#!/bin/bash

# Appindicator

extensionName=appindicatorsupport@rgcjonas.gmail.com

gnome-extensions reset $extensionName

dconf write /org/gnome/shell/extensions/appindicator/icon-size "20"

gnome-extensions disable $extensionName
gnome-extensions enable $extensionName

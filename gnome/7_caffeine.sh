#!/bin/bash

# Caffeine

extensionName=caffeine@patapon.info

gnome-extensions reset $extensionName

dconf write /org/gnome/shell/extensions/caffeine/screen-blank "always"

gnome-extensions disable $extensionName
gnome-extensions enable $extensionName
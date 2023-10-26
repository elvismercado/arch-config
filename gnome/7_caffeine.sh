#!/bin/bash

# Caffeine

gnome-extensions reset caffeine@patapon.info

dconf write /org/gnome/shell/extensions/caffeine/screen-blank "always"

gnome-extensions disable caffeine@patapon.info
gnome-extensions enable caffeine@patapon.info
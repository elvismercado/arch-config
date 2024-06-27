#!/bin/bash

sudo pacman -S --needed --noconfirm --disable-download-timeout dconf-editor # GSettings editor for GNOME

# 1. Install a browser

# 2. Go to https://extensions.gnome.org
# install the browser extension
# install the extensions from the list below

# Extension list
# !! Its Best to install via browser extension !!

# Appindicator and KStatusNotifierItem Support
# appindicatorsupport@rgcjonas.gmail.com

# Blur my Shell
# blur-my-shell@aunetx

# Burn my Windows
# burn-my-windows@schneegans.github.com

# Dash2Dock Lite (Animated)
# dash2dock-lite@icedman.github.com

# Extension list by grroot
# extension-list@tu.berry

# Desktop Icons NG (DING)
# ding@rastersoft.com

# Uptime indicator
# uptime-indicator@gniourfgniourf.gmail.com
gnome-extensions reset uptime-indicator@gniourfgniourf.gmail.com
gnome-extensions enable uptime-indicator@gniourfgniourf.gmail.com

# System Monitor

# Screenshot Window Sizer
# uptime-indicator@gniourfgniourf.gmail.com
# gnome-extensions reset uptime-indicator@gniourfgniourf.gmail.com
# gnome-extensions enable uptime-indicator@gniourfgniourf.gmail.com


# Removable Drive Menu
# drive-menu@gnome-shell-extensions.gcampax.github.com
gnome-extensions reset drive-menu@gnome-shell-extensions.gcampax.github.com
gnome-extensions enable drive-menu@gnome-shell-extensions.gcampax.github.com

# Workspace Indicator
# workspace-indicator@gnome-shell-extensions.gcampax.github.com
gnome-extensions reset workspace-indicator@gnome-shell-extensions.gcampax.github.com
gnome-extensions enable workspace-indicator@gnome-shell-extensions.gcampax.github.com

# Not working
# Coverflow alt tab
# Pixel Saver
# Pamac updates indicator
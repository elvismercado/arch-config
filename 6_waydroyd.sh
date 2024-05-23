#!/bin/bash

source script_exit_utils.sh
setup_script_exit

# Danct12 commented on 2021-09-21 06:23 (UTC) (edited on 2021-10-08 16:06 (UTC) by Danct12)
# Before install Waydroid, make sure that your kernel supports binder and ashmem module (currently only linux-zen does)

# Keep in mind that Waydroid only works with Wayland compositors. It also does not work yet with proprietary NVIDIA driver.

# After install waydroid and waydroid-image, run this command to initialize the container:

# # waydroid init
# Then the container can be started via waydroid-container.service. The official project group/channel can be found on:

# Matrix: https://matrix.to/#/#waydroid:connolly.tech
# Telegram: https://t.me/waydroid

yay -S --noconfirm --needed --disable-download-timeout waydroid

sudo waydroid init

systemctl enable waydroid-container.service
systemctl start waydroid-container.service

# should add this to startup script

# multi-window mode
waydroid prop set persist.waydroid.multi_windows true
systemctl restart waydroid-container.service
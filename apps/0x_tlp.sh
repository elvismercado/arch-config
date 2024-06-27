#!/bin/bash

# For Laptops.
# but also maybe fixes issues with waking up from suspend, even on pc

source ../setup_script_exit.sh
setup_script_exit

yay -S --noconfirm --needed --disable-download-timeout tlp

systemctl enable --now tlp
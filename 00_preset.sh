#!/bin/bash

source setup_script_exit.sh
setup_script_exit

sudo pacman -S --noconfirm --needed --disable-download-timeout linux-zen-headers

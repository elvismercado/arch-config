#!/bin/bash

source setup_script_exit.sh
setup_script_exit

sudo pacman -S --noconfirm --needed --disable-download-timeout git nano linux-zen-headers

# colord: monitor color manager
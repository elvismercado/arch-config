#!/bin/bash

source setup_script_exit.sh
setup_script_exit

# Docker

sudo pacman -S --noconfirm --needed --disable-download-timeout --removemake docker docker-compose

# I don't like the docker-desktop 
yay -S --noconfirm --needed --disable-download-timeout --removemake lazydocker

# systemctl enable docker.service
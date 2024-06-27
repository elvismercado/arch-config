#!/bin/bash

source ../setup_script_exit.sh
setup_script_exit

# Docker

yay -S --noconfirm --needed --disable-download-timeout docker docker-compose

# I don't like the docker-desktop 
yay -S --noconfirm --needed --disable-download-timeout lazydocker

systemctl enable --now docker.service
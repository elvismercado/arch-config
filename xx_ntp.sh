#!/bin/bash

source setup_script_exit.sh
setup_script_exit

sudo pacman -S --noconfirm --needed --disable-download-timeout ntp
systemctl enable ntpd

# sudo pacman -S --noconfirm --needed --disable-download-timeout openntpd
systemctl enable openntpd

# server 0.nl.pool.ntp.org
# server 1.nl.pool.ntp.org
# server 2.nl.pool.ntp.org
# server 3.nl.pool.ntp.org
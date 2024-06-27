#!/bin/bash

source ../setup_script_exit.sh
setup_script_exit

# Printing setup

yay -S --noconfirm --needed --disable-download-timeout cups cups-pdf

# USB
yay -S --noconfirm --needed --disable-download-timeout usbutils ipp-usb

# Network
# https://wiki.archlinux.org/title/Avahi#Hostname_resolution
yay -S --noconfirm --needed --disable-download-timeout nss-mdns 
sudo sed -i '/^hosts:/ s/resolve/mdns_minimal [NOTFOUND=return] resolve/' /etc/nsswitch.conf

# OpenPrinting CUPS filters
yay -S --noconfirm --needed --disable-download-timeout cups-filters ghostscript gsfonts

# Foomatic
yay -S --noconfirm --needed --disable-download-timeout foomatic-db-engine foomatic-db-ppds foomatic-db-nonfree-ppds

# Gutenprint
yay -S --noconfirm --needed --disable-download-timeout gutenprint foomatic-db-gutenprint-ppds

# Bluetooth printers
yay -S --noconfirm --needed --disable-download-timeout bluez-cups

# HP drivers
yay -S --noconfirm --needed --disable-download-timeout hplip

systemctl enable --now avahi-daemon
systemctl enable --now cups
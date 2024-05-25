#!/bin/bash

source setup_script_exit.sh
setup_script_exit

# Printing setup

sudo pacman -S --noconfirm --needed --disable-download-timeout colord cups-browsed ipp-usb libusb logrotate cups cups-pdf cups-pk-helper bluez-cups hplip
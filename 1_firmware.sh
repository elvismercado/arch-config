#!/bin/bash

source setup_script_exit.sh
setup_script_exit

yay -S --noconfirm --needed --disable-download-timeout mkinitcpio-firmware # Optional firmware for the default linux kernel to get rid of the annoying 'WARNING: Possibly missing firmware for module:' messages

sudo mkinitcpio -P
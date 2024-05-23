#!/bin/bash

source script_exit_utils.sh
setup_script_exit

yay -S --noconfirm --needed --disable-download-timeout mkinitcpio-firmware # Optional firmware for the default linux kernel to get rid of the annoying 'WARNING: Possibly missing firmware for module:' messages
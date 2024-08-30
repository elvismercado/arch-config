#!/bin/bash

source setup_script_exit.sh
setup_script_exit

# Update package list and upgrade all currently installed repo and AUR.
yay -Syu

# Remove orphaned packages (installed as dependencies but not required by any package)
yay -Yc
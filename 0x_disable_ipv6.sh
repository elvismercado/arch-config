#!/bin/bash

# Disable ipv6

# via: Kernel Parameter
sudo sed -i 's/\(GRUB_CMDLINE_LINUX_DEFAULT=".*\)"/\1 ipv6.disable=1"/' /etc/default/grub
sudo grub-mkconfig -o /boot/grub/grub.cfg

# via: Sysctl
# sudo nano /etc/sysctl.d/99-sysctl.conf
# ```
# net.ipv6.conf.all.disable_ipv6 = 1
# net.ipv6.conf.default.disable_ipv6 = 1
# net.ipv6.conf.lo.disable_ipv6 = 1
# ```
# sudo sysctl -p /etc/sysctl.d/99-sysctl.conf

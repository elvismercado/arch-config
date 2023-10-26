#!/bin/bash

# Setup Conky
sudo pacman -S --needed --noconfirm --disable-download-timeout conky conky-manager

mkdir -pv /tmp && cd /tmp
git clone https://github.com/elvismercado/arch-config.git

mkdir -pv ~/.config/conky/widgets
cp -Rv "/tmp/arch-config/gnome/conky/Conky - PosInTech/Clock/conkyrc_time" ~/.config/conky/widgets/clock
cp -Rv "/tmp/arch-config/gnome/conky/Conky - PosInTech/Day/Day/Hermoso_Rc" ~/.config/conky/widgets/day
cp -Rv "/tmp/arch-config/gnome/conky/Minimalis Conky/conky.conf" ~/.config/conky/widgets/minimalis
cp -Rv "/tmp/arch-config/gnome/conky/run.sh" ~/.config/conky/widgets

mkdir -p ~/.local/share/fonts
cp -Rv "/tmp/arch-config/gnome/conky/Conky - PosInTech/Clock/fonts/JosefinSans-Regular.ttf" ~/.local/share/fonts/
cp -Rv "/tmp/arch-config/gnome/conky/Conky - PosInTech/Day/Day/Anurati.otf" ~/.local/share/fonts/
cp -Rv "/tmp/arch-config/gnome/conky/Minimalis Conky/ConkySymbols.ttf" ~/.local/share/fonts/

chmod +x ~/.config/conky/widgets/run.sh

mkdir -pv ~/.config/autostart
cat << EOF | tee ~/.config/autostart/conky-widgets.desktop
[Desktop Entry]
Type=Application
Name=Conky Widgets
Comment=Day and Clock
Exec=$HOME/.config/conky/widgets/run.sh
X-GNOME-Autostart-enabled=true
Terminal=false
Hidden=false
NoDisplay=false
EOF

fc-cache -f -v
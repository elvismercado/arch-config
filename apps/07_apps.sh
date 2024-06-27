#!/bin/bash

source ../setup_script_exit.sh
setup_script_exit

# Desktop notifications
# libnotify 

# Browsers
yay -S --noconfirm --needed --disable-download-timeout brave-bin librewolf-bin

# VS Code
yay -S --noconfirm --needed --disable-download-timeout vscodium-bin vscodium-bin-marketplace vscodium-bin-features
# might need to remove xorg/wayland shortcut. where?

# Signal
yay -S --noconfirm --needed --disable-download-timeout signal-desktop
ln -s /usr/share/applications/signal-desktop.desktop ~/.config/autostart/

# Nextcloud
yay -S --noconfirm --needed --disable-download-timeout nextcloud-client
# sudo sed -i '/^Implements=org\.freedesktop\.CloudProviders/ s/^\([^#]\)/#\1/' /usr/share/applications/com.nextcloud.desktopclient.nextcloud.desktop
# sed -i '/^\[Data Source\]/{:a;n;/^Enabled/!ba;s/true/false/}' ~/.config/evolution/sources/birthdays.source
# sed -i '/^\[Data Source\]/{:a;n;/^Enabled/!ba;s/true/false/}' ~/.config/evolution/sources/system-calendar.source

# Ferdium
yay -S --noconfirm --needed --disable-download-timeout ferdium-bin
ln -s /usr/share/applications/ferdium.desktop ~/.config/autostart/

# Variety
sudo pacman -S --noconfirm --needed --disable-download-timeout variety

# Insync
yay -S --noconfirm --needed --disable-download-timeout insync
# yay -S --noconfirm --needed --disable-download-timeout insync-nautilus # GNOME ships with nautilus
# yay -S --noconfirm --needed --disable-download-timeout insync-dolphin # KDE ships with dolphin

# Syncthing
yay -S --noconfirm --needed --disable-download-timeout syncthingtray

# ProtonMail Bridge
# yay -S --noconfirm --needed --disable-download-timeout gnome-keyring # GNOME
yay -S --noconfirm --needed --disable-download-timeout protonmail-bridge-bin

# Logitech devices
sudo pacman -S --noconfirm --needed --disable-download-timeout libayatana-appindicator solaar
cp -v /usr/share/applications/solaar.desktop ~/.config/autostart/
# add option to start minimized in tray
sed -i '/^Exec=/ s/$/ --window=hide/' .config/autostart/solaar.desktop

# LibreOffice
# libcdr: CorelDraw file format importer library for LibreOffice
sudo pacman -S --noconfirm --needed --disable-download-timeout libreoffice-still libreoffice-still-en-gb libreoffice-still-nl libreoffice-still-es

# Gimp
sudo pacman -S --noconfirm --needed --disable-download-timeout gimp gimp-help-en gimp-help-en_gb gimp-help-nl gimp-help-es gimp-nufraw gimp-plugin-gmic xsane-gimp

# Discord (vencord/vesktop)
# libappindicator-gtk3
# xdg-utils
sudo pacman -S --noconfirm --needed --disable-download-timeout discord

# Thunderbird
# Hunspell is spell checker
# libnotify is desktop notifications
sudo pacman -S --noconfirm --needed --disable-download-timeout hunspell hunspell-en_gb hunspell-en_us hunspell-es_any hunspell-es_es hunspell-nl
sudo pacman -S --noconfirm --needed --disable-download-timeout libnotify libnotify-docs 
sudo pacman -S --noconfirm --needed --disable-download-timeout thunderbird thunderbird-i18n-en-gb thunderbird-i18n-en-us thunderbird-i18n-es-es thunderbird-i18n-nl systray-x-common

# Terminals
# yay -S --noconfirm --needed --disable-download-timeout alacritty alacritty-themes
# $HOME/.config/alacritty/alacritty.toml

# sudo pacman -S --noconfirm --needed --disable-download-timeout guake # GNOME

# Youtube downloader
sudo pacman -S --noconfirm --needed --disable-download-timeout yt-dlp
yay -S --noconfirm --needed --disable-download-timeout ytdlp-gui

# VLC media player
sudo pacman -S --noconfirm --needed --disable-download-timeout libva-vdpau-driver #nvidia
# sudo pacman -S --noconfirm --needed --disable-download-timeout libva-intel-driver #intel
sudo pacman -S --noconfirm --needed --disable-download-timeout libdvdcss vcdimager ttf-dejavu libtiger sdl_image libsamplerate gnu-free-fonts live-media libgoom2 projectm
sudo pacman -S --noconfirm --needed --disable-download-timeout vlc

# Wacom tablets
sudo pacman -S --noconfirm --needed --disable-download-timeout libwacom

# Reflector
yay -S --noconfirm --needed --disable-download-timeout rsync reflector reflector-simple
# yay -S --noconfirm --needed --disable-download-timeout shiny-mirrors


# # Timeshift
# # With BTRFS support and snapshots in GRUB
# sudo pacman -S --noconfirm --needed --disable-download-timeout btrfs-progs grub-btrfs timeshift
# systemctl enable cronie.service

# Obsidian
# sudo pacman -S --noconfirm --needed --disable-download-timeout obsidian
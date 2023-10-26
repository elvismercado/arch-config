#!/bin/bash

# Timeshift
sudo pacman -S --noconfirm --needed --disable-download-timeout btrfs-progs grub-btrfs
sudo pacman -S --noconfirm --needed --disable-download-timeout timeshift
systemctl enable cronie.service

# LibreOffice
# libcdr: CorelDraw file format importer library for LibreOffice
sudo pacman -S --noconfirm --needed --disable-download-timeout libreoffice-still libreoffice-still-en-gb libreoffice-still-nl libreoffice-still-es

# Nextcloud
sudo pacman -S --noconfirm --needed --disable-download-timeout nextcloud-client nextcloud-client-cloudproviders
sudo sed -i '/^Implements=org\.freedesktop\.CloudProviders/ s/^\([^#]\)/#\1/' /usr/share/applications/com.nextcloud.desktopclient.nextcloud.desktop
sed -i '/^\[Data Source\]/{:a;n;/^Enabled/!ba;s/true/false/}' ~/.config/evolution/sources/birthdays.source
sed -i '/^\[Data Source\]/{:a;n;/^Enabled/!ba;s/true/false/}' ~/.config/evolution/sources/system-calendar.source

# Gimp
sudo pacman -S --noconfirm --needed --disable-download-timeout gimp gimp-help-en gimp-help-en_gb gimp-help-nl gimp-help-es gimp-nufraw gimp-plugin-gmic xsane-gimp

# Obsidian
sudo pacman -S --noconfirm --needed --disable-download-timeout obsidian

# Discord
# libappindicator-gtk3
# xdg-utils
sudo pacman -S --noconfirm --needed --disable-download-timeout discord

# Thunderbird
# Hunspell is spell checker
# libnotify is desktop notifications
sudo pacman -S --noconfirm --needed --disable-download-timeout hunspell hunspell-en_gb hunspell-en_us hunspell-es_any hunspell-es_es hunspell-nl
sudo pacman -S --noconfirm --needed --disable-download-timeout libnotify libnotify-docs 
sudo pacman -S --noconfirm --needed --disable-download-timeout thunderbird thunderbird-i18n-en-gb thunderbird-i18n-en-us thunderbird-i18n-es-es thunderbird-i18n-nl systray-x-common

# Variety
sudo pacman -S --noconfirm --needed --disable-download-timeout variety

# Terminals
sudo pacman -S --noconfirm --needed --disable-download-timeout guake alacritty
yay -S --noconfirm --needed --disable-download-timeout alacritty-themes

# Youtube downloader
sudo pacman -S --noconfirm --needed --disable-download-timeout yt-dlp
yay -S --noconfirm --needed --disable-download-timeout ytdlp-gui

# VLC media player
sudo pacman -S --noconfirm --needed --disable-download-timeout libva-vdpau-driver #nvidia
# sudo pacman -S --noconfirm --needed --disable-download-timeout libva-intel-driver #intel
sudo pacman -S --noconfirm --needed --disable-download-timeout libdvdcss vcdimager ttf-dejavu libtiger sdl_image libsamplerate gnu-free-fonts live-media libgoom2 projectm
sudo pacman -S --noconfirm --needed --disable-download-timeout vlc

# Ferdium
yay -S --noconfirm --needed --disable-download-timeout ferdium-bin
ln -s /usr/share/applications/ferdium.desktop ~/.config/autostart/

# Insync
# may require lib32-libappindicator-gtk2 for tray icon
yay -S --noconfirm --needed --disable-download-timeout insync insync-nautilus

# Syncthing
yay -S --noconfirm --needed --disable-download-timeout syncthingtray

# ProtonMail Bridge
yay -S --noconfirm --needed --disable-download-timeout gnome-keyring
yay -S --noconfirm --needed --disable-download-timeout protonmail-bridge-bin

# Browsers
gpg --auto-key-locate nodefault,wkd --locate-keys torbrowser@torproject.org
yay -S --noconfirm --needed --disable-download-timeout libnotify networkmanager speech-dispatcher xdg-desktop-portal-gnome
yay -S --noconfirm --needed --disable-download-timeout brave-bin librewolf-bin mullvad-browser-bin

# VS Code
yay -S --noconfirm --needed --disable-download-timeout vscodium-bin vscodium-bin-marketplace vscodium-bin-features

# Logitech devices
sudo pacman -S --noconfirm --needed --disable-download-timeout libayatana-appindicator solaar

# Wacom tablets
sudo pacman -S --noconfirm --needed --disable-download-timeout libwacom

# Reflector
yay -S --noconfirm --needed --disable-download-timeout rsync reflector reflector-simple
# yay -S --noconfirm --needed --disable-download-timeout shiny-mirrors

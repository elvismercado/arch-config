# My Config

- Arch Linux
- installation
  - ISO
  - Archinstall
- Linux Kernel
  - mainline would be preferred
  - need linux-zen for waydroid!!
- nvidia drivers
  - `nvidia nvidia-settings cuda ffnvcodec-headers`
- GPT partitioning
- BTRFS volume
  - /boot
  - /var/log
  - /home
  - /var/cache/pacman/pkg
  - /.snapshots
  - /
-

# Install process

- Boot from USB ISO
-
- Bootloader options
  - press `e` while in bootloader
  - Video resolution
    - behind `linux` command add `video=1920x1080`
  - If no display or display black (GPU driver issue)
    - behind `linux` command add `nomodeset`
  - `Ctrl+x` to continue boot
- If loaded ISO terminal font is too small
  - $ `setfont ter-128n`
- If need to connect to Wi-Fi
  - $ `iwctl`
  - $ `station wlan0 connect "mywifi"`
- check network connection
  - `ping archlinux.org`
- Launch Archinstall
  - `archinstall`
  - use 'best-effort' BTRFS
  - use GRUB
  - use Swap
  - use Desktop GNOME
  - use Pipewire
  - use linux-zen
  - multilib
  - additional packages (optional)
    - nano
    - git
    - timeshift
    - linux-zen-headers
    <!-- - amd-ucode/intel-ucode -->
  - Boot to system with chroot? YES
    - `su - [user]` to change to your home user
  - Install the scripts in this repo. Advise to install up until the apps script, and then reboot and continue in the GUI
    - `chmod +x *.sh`
    - `uninstall.sh`
    - `yay.sh`
    - `firmware.sh`
    - `nvidia-geforce-gt-730`

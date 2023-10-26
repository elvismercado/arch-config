
# Setup Reversal Icon Theme
# mkdir -pv ~/.profile
# mkdir -pv ~/.themes
# mkdir -pv /tmp && cd /tmp
# git clone https://github.com/Fausto-Korpsvart/Tokyo-Night-GTK-Theme.git tokyo-night
# cp -Rv /tmp/tokyo-night/themes ~/.themes
# mkdir -pv ~/.config/gtk-3.0
# source_dir="/tmp/tokyo-night/themes/*/gtk-3.0"
# dest_dir=~/.config/gtk-3.0
# for source_folder in $source_dir; do
#   parent_folder=$(basename "$(dirname "$source_folder")")
#   dest_path="$dest_dir/$parent_folder"
#   cp -Rv "$source_folder" "$dest_path"
# done
# mkdir -pv ~/.config/gtk-4.0
# source_dir="/tmp/tokyo-night/themes/*/gtk-4.0"
# dest_dir=~/.config/gtk-4.0
# for source_folder in $source_dir; do
#   parent_folder=$(basename "$(dirname "$source_folder")")
#   dest_path="$dest_dir/$parent_folder"
#   cp -Rv "$source_folder" "$dest_path"
# done
# sudo pacman -S gtk-engine-murrine
# echo "GTK_THEME=Tokyonight-Dark-B_BL" >> "$HOME/.profile"
# gsettings set org.gnome.desktop.interface gtk-theme 'Tokyonight-Dark-B_BL'

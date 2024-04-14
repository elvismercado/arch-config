# #!/bin/bash

# # Configure Dash-To-Panel
# # Possible to change Primary Monitor and Available monitors
# sudo pacman -S --needed gnome-shell-extension-dash-to-panel --noconfirm

# gnome-extensions reset dash-to-panel@jderose9.github.com
# gnome-extensions enable dash-to-panel@jderose9.github.com

# mkdir -pv /tmp && cd /tmp
# git clone https://github.com/elvismercado/arch-config.git
# mkdir -pv ~/.config/dash-to-panel
# cp -Rv "/tmp/arch-config/gnome/dash-to-panel/elvis mercado icon.png" ~/.config/dash-to-panel

# gsettings set org.gnome.shell.extensions.dash-to-panel animate-appicon-hover true
# gsettings set org.gnome.shell.extensions.dash-to-panel animate-appicon-hover-animation-convexity "{'RIPPLE': 2.0, 'PLANK': 0.80000000000000004, 'SIMPLE': 0.0}"
# gsettings set org.gnome.shell.extensions.dash-to-panel animate-appicon-hover-animation-duration "{'SIMPLE': uint32 243, 'RIPPLE': 130, 'PLANK': 65}"
# gsettings set org.gnome.shell.extensions.dash-to-panel animate-appicon-hover-animation-extent "{'RIPPLE': 4, 'PLANK': 2, 'SIMPLE': 1}"
# gsettings set org.gnome.shell.extensions.dash-to-panel animate-appicon-hover-animation-rotation "{'SIMPLE': 0, 'RIPPLE': 10, 'PLANK': 0}"
# gsettings set org.gnome.shell.extensions.dash-to-panel animate-appicon-hover-animation-travel "{'SIMPLE': 0.10000000000000001, 'RIPPLE': 0.40000000000000002, 'PLANK': 0.0}"
# gsettings set org.gnome.shell.extensions.dash-to-panel animate-appicon-hover-animation-type 'SIMPLE'
# gsettings set org.gnome.shell.extensions.dash-to-panel animate-appicon-hover-animation-zoom "{'SIMPLE': 1.1100000000000001, 'RIPPLE': 1.25, 'PLANK': 1.99}"
# gsettings set org.gnome.shell.extensions.dash-to-panel appicon-margin 4
# gsettings set org.gnome.shell.extensions.dash-to-panel appicon-padding 5
# gsettings set org.gnome.shell.extensions.dash-to-panel dot-color-dominant false
# gsettings set org.gnome.shell.extensions.dash-to-panel dot-color-override false
# gsettings set org.gnome.shell.extensions.dash-to-panel dot-color-unfocused-different false
# gsettings set org.gnome.shell.extensions.dash-to-panel dot-position 'BOTTOM'
# gsettings set org.gnome.shell.extensions.dash-to-panel dot-size 2
# gsettings set org.gnome.shell.extensions.dash-to-panel dot-style-focused 'DASHES'
# gsettings set org.gnome.shell.extensions.dash-to-panel dot-style-unfocused 'SQUARES'
# gsettings set org.gnome.shell.extensions.dash-to-panel enter-peek-mode-timeout 200
# gsettings set org.gnome.shell.extensions.dash-to-panel focus-highlight true
# gsettings set org.gnome.shell.extensions.dash-to-panel focus-highlight-color '#613583'
# gsettings set org.gnome.shell.extensions.dash-to-panel focus-highlight-dominant false
# gsettings set org.gnome.shell.extensions.dash-to-panel focus-highlight-opacity 30
# gsettings set org.gnome.shell.extensions.dash-to-panel group-apps true
# gsettings set org.gnome.shell.extensions.dash-to-panel hide-overview-on-startup false
# gsettings set org.gnome.shell.extensions.dash-to-panel hotkeys-overlay-combo 'TEMPORARILY'
# gsettings set org.gnome.shell.extensions.dash-to-panel intellihide false
# gsettings set org.gnome.shell.extensions.dash-to-panel isolate-monitors false
# gsettings set org.gnome.shell.extensions.dash-to-panel isolate-workspaces false
# gsettings set org.gnome.shell.extensions.dash-to-panel leftbox-padding -1
# gsettings set org.gnome.shell.extensions.dash-to-panel overview-click-to-exit false
# gsettings set org.gnome.shell.extensions.dash-to-panel panel-anchors '{"0":"MIDDLE"}'
# gsettings set org.gnome.shell.extensions.dash-to-panel panel-element-positions '{"0":[{"element":"showAppsButton","visible":true,"position":"stackedTL"},{"element":"activitiesButton","visible":false,"position":"stackedBR"},{"element":"leftBox","visible":false,"position":"stackedBR"},{"element":"taskbar","visible":true,"position":"centerMonitor"},{"element":"centerBox","visible":true,"position":"stackedBR"},{"element":"rightBox","visible":true,"position":"stackedBR"},{"element":"dateMenu","visible":true,"position":"stackedBR"},{"element":"systemMenu","visible":true,"position":"stackedBR"},{"element":"desktopButton","visible":false,"position":"stackedBR"}]}'
# gsettings set org.gnome.shell.extensions.dash-to-panel panel-lengths '{"0":100}'
# gsettings set org.gnome.shell.extensions.dash-to-panel panel-positions '{"0":"BOTTOM"}'
# gsettings set org.gnome.shell.extensions.dash-to-panel panel-sizes '{"0":37}'
# gsettings set org.gnome.shell.extensions.dash-to-panel progress-show-count true
# gsettings set org.gnome.shell.extensions.dash-to-panel secondarymenu-contains-appmenu true
# gsettings set org.gnome.shell.extensions.dash-to-panel secondarymenu-contains-showdetails false
# gsettings set org.gnome.shell.extensions.dash-to-panel show-apps-icon-file "$HOME/.config/dash-to-panel/elvis mercado icon.png"
# gsettings set org.gnome.shell.extensions.dash-to-panel show-appmenu false
# gsettings set org.gnome.shell.extensions.dash-to-panel show-apps-icon-side-padding 8
# gsettings set org.gnome.shell.extensions.dash-to-panel show-apps-override-escape true
# gsettings set org.gnome.shell.extensions.dash-to-panel show-favorites true
# gsettings set org.gnome.shell.extensions.dash-to-panel show-favorites-all-monitors true
# gsettings set org.gnome.shell.extensions.dash-to-panel show-running-apps true
# gsettings set org.gnome.shell.extensions.dash-to-panel show-tooltip true
# gsettings set org.gnome.shell.extensions.dash-to-panel show-window-previews true
# gsettings set org.gnome.shell.extensions.dash-to-panel show-window-previews-timeout 200
# gsettings set org.gnome.shell.extensions.dash-to-panel status-icon-padding -1
# gsettings set org.gnome.shell.extensions.dash-to-panel stockgs-force-hotcorner false
# gsettings set org.gnome.shell.extensions.dash-to-panel stockgs-keep-dash false
# gsettings set org.gnome.shell.extensions.dash-to-panel stockgs-keep-top-panel false
# gsettings set org.gnome.shell.extensions.dash-to-panel stockgs-panelbtn-click-only false
# gsettings set org.gnome.shell.extensions.dash-to-panel trans-bg-color '#000000'
# gsettings set org.gnome.shell.extensions.dash-to-panel trans-use-custom-bg true
# gsettings set org.gnome.shell.extensions.dash-to-panel trans-use-custom-gradient false
# gsettings set org.gnome.shell.extensions.dash-to-panel trans-use-custom-opacity true
# gsettings set org.gnome.shell.extensions.dash-to-panel trans-use-dynamic-opacity true
# gsettings set org.gnome.shell.extensions.dash-to-panel tray-padding -1
# gsettings set org.gnome.shell.extensions.dash-to-panel window-preview-title-position 'TOP'

# gnome-extensions disable dash-to-panel@jderose9.github.com
# gnome-extensions enable dash-to-panel@jderose9.github.com

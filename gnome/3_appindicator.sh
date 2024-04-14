#!/bin/bash

gnome-extensions reset appindicatorsupport@rgcjonas.gmail.com

dconf write /org/gnome/shell/extensions/appindicator/icon-size "20"

gnome-extensions disable appindicatorsupport@rgcjonas.gmail.com
gnome-extensions enable appindicatorsupport@rgcjonas.gmail.com

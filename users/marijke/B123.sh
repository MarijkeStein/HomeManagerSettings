#!/usr/bin/env bash

set -euxo pipefail

MONITORPORT=$(xrandr --listmonitors | awk '/3840/ && /2160/ { print $4 }')

autorandr --match-edid --load B123

xfconf-query -c "xfce4-panel" -p "/panels/panel-1/icon-size" -s "16"
xfconf-query -c "xfce4-panel" -p "/panels/panel-1/output-name" -s "${MONITORPORT}"
xfconf-query -c "xfce4-panel" -p "/panels/panel-1/size" -s "30"

xfconf-query -c "xsettings" -p "/Gtk/FontName" -s "Sans 12"
xfconf-query -c "xsettings" -p "/MonospaceFontName" -s "Gtk/JetBrainsMono Nerd Font Medium 10"
xfconf-query -c "xsettings" -p "/Net/IconThemeName" -s "Adwaita"
xfconf-query -c "xsettings" -p "/Net/ThemeName" -s "Adwaita-dark"

dconf write \
      /org/gnome/terminal/legacy/profiles:/:b1dcc9dd-5262-4d8d-a863-c897e6d979b9/font \
      "'JetBrainsMono Nerd Font 18'"

cp other-B123.xml "${HOME}/.config/JetBrains/PyCharmCE2025.1/options"

#pycharm-community &
#gnome-terminal --geometry 135x30+2100+1400 &


#!/usr/bin/env bash

set -euxo pipefail

MONITORPORT=eDP-1

autorandr --match-edid --load none

xfconf-query -c "xfce4-panel" -p "/panels/panel-1/icon-size" -s "12"
xfconf-query -c "xfce4-panel" -p "/panels/panel-1/output-name" -s "${MONITORPORT}"
xfconf-query -c "xfce4-panel" -p "/panels/panel-1/size" -s "24"

xfconf-query -c "xsettings" -p "/Gtk/FontName" -s "Sans 10"
xfconf-query -c "xsettings" -p "/MonospaceFontName" -s "Gtk/JetBrainsMono Nerd Font Medium 10"
xfconf-query -c "xsettings" -p "/Net/IconThemeName" -s "Adwaita"
xfconf-query -c "xsettings" -p "/Net/ThemeName" -s "Adwaita-dark"

dconf write \
      /org/gnome/terminal/legacy/profiles:/:b1dcc9dd-5262-4d8d-a863-c897e6d979b9/font \
      "'JetBrainsMono Nerd Font 12'"

cp other-standalone.xml "${HOME}/.config/JetBrains/PyCharmCE2025.1/options"

#         "backdrop/screen0/monitoreDP-1/workspace0/image-style" = 0;
#         "backdrop/screen0/monitoreDP-1/workspace1/image-style" = 0;
#       };
#
#       xfce4-panel = {
#         "panels/panel-1/icon-size" = 12;
#         "panels/panel-1/output-name" = "eDP-1";
#         "panels/panel-1/size" = 24;
#       };
#
#       xsettings = {
#         "Gtk/FontName" = "Sans 11.5";
#         "MonospaceFontName" = "         ";

#pycharm-community &
#gnome-terminal --geometry 135x30+2100+1400 &


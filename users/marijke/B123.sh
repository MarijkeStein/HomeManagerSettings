#!/bin/sh

MONITORPORT=DP-8

autorandr --match-edid --load B123

xfconf-query -c "xfce4-panel" -p "/panels/panel-1/output-name" -s "${MONITORPORT}"

#pycharm-community &
#gnome-terminal --geometry 135x30+2100+1400 &


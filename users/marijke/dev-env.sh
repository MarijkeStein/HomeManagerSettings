#!/usr/bin/env bash

set -euxo pipefail

pycharm-community &

gnome-terminal --geometry 135x30+2100+1400 &

signal-desktop &

fluffychat &

thunderbird &

keepassxc &

sleep 1

# Kalender
firefox https://zeiterfassung.hfmdk-frankfurt.de https://owa.rz.hfmdk-frankfurt.de/owa/#path=/calendar/view/WorkWeek &

# RZ-Teeküche
firefox --new-window https://webconf.hfmdk-frankfurt.de/b/bac-fhb-v6w-kib &

# Work log etc.
kate ~/misc/log/current.txt ~/Notes.txt &


# EOF

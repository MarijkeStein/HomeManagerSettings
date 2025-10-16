#!/usr/bin/env bash

set -euxo pipefail

pycharm-community &

gnome-terminal --geometry 135x30+2100+1400 &

signal-desktop &

fluffychat &

thunderbird &

keepassxc &

nextcloud &

sleep 1

firefox --new-window https://owa.rz.hfmdk-frankfurt.de/owa/#path=/calendar/view/WorkWeek \
                     https://fluffychat.im/web \
                     https://zeiterfassung.hfmdk-frankfurt.de &

# Work log etc.
kate ~/misc/log/current.txt ~/Notes.txt &


# EOF

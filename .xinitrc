#!/bin/sh
export GTK_IM_MODULE="fcitx"
export QT_IM_MODULE="fcitx"
export XIM="fcitx"
export XIM_PROGRAM="/usr/bin/fcitx"
export XMODIFIERS="@im=fcitx"
fcitx &
xrandr --output HDMI-A-0 --auto --output eDP --off
exec dwm

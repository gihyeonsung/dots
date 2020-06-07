#!/bin/sh
export GTK_IM_MODULE="fcitx"
export QT_IM_MODULE="fcitx"
export XIM="fcitx"
export XIM_PROGRAM="/usr/bin/fcitx"
export XMODIFIERS="@im=fcitx"

xmodmap "$XDG_CONFIG_HOME/xmodmap/config"
fcitx &
touchpad disable
trackpoint 0.25
exec dwm

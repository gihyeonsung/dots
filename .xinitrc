#!/bin/sh
export GTK_IM_MODULE="fcitx"
export QT_IM_MODULE="fcitx"
export XIM="fcitx"
export XIM_PROGRAM="/usr/bin/fcitx"
export XMODIFIERS="@im=fcitx"

fcitx &
xbindkeys -f "$XDG_CONFIG_HOME/xbindkeys/config"
exec dwm

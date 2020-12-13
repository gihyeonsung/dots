#!/bin/sh
export GTK_IM_MODULE="fcitx"
export QT_IM_MODULE="fcitx"
export XIM="fcitx"
export XIM_PROGRAM="/usr/bin/fcitx"
export XMODIFIERS="@im=fcitx"
[ -x "$(command -v fcitx)" ] && fcitx &
[ -x "$(command -v feh)" ]   && feh --no-fehbg --bg-center /home/gihyeon/images/wallpaper.png
[ -x "$(command -v picom)" ] && picom &
[ -x "$(command -v dwm)" ]   && exec dwm

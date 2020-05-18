#!/bin/sh
# ~/.xinitrc

export GTK_IM_MODULE="fcitx"
export QT_IM_MODULE="fcitx"
export XIM="fcitx"
export XIM_PROGRAM="/usr/bin/fcitx"
export XMODIFIERS="@im=fcitx"
fcitx &                                # Start fcitx xim
trackpoint-sensitivity 0.25            # Set trackpoint sensitivity
redshift -P -O 3000                    # Set screen temperature
xrandr | grep "HDMI.*\ connected" && \ # Setup external monitor if it has
  xrandr-wrapper dual
xsetroot -solid "#fdf6e3"              # Set background color
exec dwm                               # Start dwm

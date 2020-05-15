#!/bin/sh
# ~/.xinitrc

# set and export variables related to x
export GTK_IM_MODULE='fcitx'
export QT_IM_MODULE='fcitx'
export XMODIFIERS='@im=fcitx'
export XIM='fcitx'
export XIM_PROGRAM='/usr/bin/fcitx'

# start x input method
fcitx &

# set screen temperature to 3000
redshift -P -O 3000

# set dual screen mode if hdmi is connected
xrandr | grep HDMI | grep connected && xrandr-wrapper dual

# set trackpoint sensitivity
trackpoint-sensitivity 0.25

# replace current shell with dwm
exec dwm

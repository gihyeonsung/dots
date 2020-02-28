#
# ~/.bash_profile
#

export PATH=$PATH:/home/gihyeon/.local/bin

[[ -f ~/.bashrc ]] && . ~/.bashrc

if systemctl -q is-active graphical.target && [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
	  exec startx
fi


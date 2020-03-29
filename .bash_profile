#
# ~/.bash_profile
#

export PATH=$PATH:/home/gihyeon/.local/bin:/home/gihyeon/go/bin

[[ -f ~/.bashrc ]] && . ~/.bashrc

if systemctl -q is-active graphical.target && [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
	  exec startx
fi


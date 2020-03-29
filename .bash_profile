#
# ~/.bash_profile
#

export PATH=$PATH:/home/gihyeon/.local/bin
export PATH=$PATH:/home/gihyeon/.local/scripts
export PATH=$PATH:/home/gihyeon/go/bin

[[ -f ~/.bashrc ]] && . ~/.bashrc

if systemctl -q is-active graphical.target && [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
	  exec startx
fi


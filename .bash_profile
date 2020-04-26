#
# ~/.bash_profile
#

export VISUAL=nvim
export PATH=$PATH:/home/gihyeon/.local/bin
export PATH=$PATH:/home/gihyeon/.local/scripts
export PATH=$PATH:/home/gihyeon/go/bin
export PATH=$PATH:/home/gihyeon/.gem/ruby/2.7.0/bin
export PATH=$PATH:/home/gihyeon/.dotnet

[[ -f ~/.bashrc ]] && . ~/.bashrc

if systemctl -q is-active graphical.target && [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
	  exec startx
fi


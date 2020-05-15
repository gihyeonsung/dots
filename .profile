#!/bin/sh
# ~/.profile

# set and export paths if exist
export PATH
[ -d "$HOME/.dotnet" ]             && PATH="$PATH:$HOME/.dotnet"
[ -d "$HOME/.gem/ruby/2.7.0/bin" ] && PATH="$PATH:$HOME/.gem/ruby/2.7.0/bin"
[ -d "$HOME/.local/bin" ]          && PATH="$PATH:$HOME/.local/bin"
[ -d "$HOME/.local/scripts" ]      && PATH="$PATH:$HOME/.local/scripts"
[ -d "$HOME/go/bin" ]              && PATH="$PATH:$HOME/go/bin"

# set umask
umask 027

# set and export variables
export VISUAL=nvim

# source bashrc if bash exists
[ -n "$BASH" ] && [ -f ~/.bashrc ] && . ~/.bashrc

# check x is ready and start x
if systemctl -q is-active graphical.target \
  && [ ! "$DISPLAY" ] && [ "$XDG_VTNR" -eq 1 ]; then
  # replace current shell with x
  exec startx
fi

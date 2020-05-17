#!/bin/sh
# ~/.profile

export PATH
[ -d "$HOME/.dotnet" ]             && PATH="$PATH:$HOME/.dotnet"
[ -d "$HOME/.gem/ruby/2.7.0/bin" ] && PATH="$PATH:$HOME/.gem/ruby/2.7.0/bin"
[ -d "$HOME/.local/bin" ]          && PATH="$PATH:$HOME/.local/bin"
[ -d "$HOME/.local/scripts" ]      && PATH="$PATH:$HOME/.local/scripts"
[ -d "$HOME/go/bin" ]              && PATH="$PATH:$HOME/go/bin"
export BAT_THEME="Solarized (light)"
export FZF_DEFAULT_COMMAND='fd --unrestricted'
export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS --color=light,gutter:#ffffd7"
       FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS --multi"
       FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS --preview-window=right:noborder"
export LESS="--quit-if-one-screen"
       LESS="$LESS --raw-control-chars"
export PAGER="less"
export VISUAL="nvim"

umask 0077

if [ -z "$DISPLAY" ] && [ "$(tty)" = "/dev/tty1" ]; then exec startx; fi

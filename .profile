#!/bin/sh
# ~/.profile

export PATH
[ -d "$HOME/.dotnet" ]             && PATH="$PATH:$HOME/.dotnet"
[ -d "$HOME/.gem/ruby/2.7.0/bin" ] && PATH="$PATH:$HOME/.gem/ruby/2.7.0/bin"
[ -d "$HOME/.local/bin" ]          && PATH="$PATH:$HOME/.local/bin"
[ -d "$HOME/.local/scripts" ]      && PATH="$PATH:$HOME/.local/scripts"
[ -d "$HOME/go/bin" ]              && PATH="$PATH:$HOME/go/bin"
export PAGER="less"
export VISUAL="nvim"

export BAT_THEME="Solarized (light)"
export FZF_DEFAULT_COMMAND='fd --unrestricted'
export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS --color=light,gutter:#ffffd7"
       FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS --multi"
       FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS --preview-window=right:noborder"
export LESS="--quit-if-one-screen"
       LESS="$LESS --raw-control-chars"

export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"

export GEM_HOME="$XDG_DATA_HOME/gem"
export GEM_SPEC_CACHE="$XDG_CACHE_HOME/gem"
export GNUPGHOME="$XDG_DATA_HOME/gnupg"
export GOPATH="$XDG_DATA_HOME/go"
export HISTFILE="$XDG_DATA_HOME/bash_history"
export LESSHISTFILE="$XDG_DATA_HOME/lesshst"
export STACK_ROOT="$XDG_DATA_HOME/stack"
export XAUTHORITY="$XDG_RUNTIME_DIR/Xauthority"

umask 0077

[ -z "$DISPLAY" ] && [ "$(tty)" = "/dev/tty1" ] && exec startx

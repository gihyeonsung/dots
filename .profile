#!/bin/sh
export BROWSER="firefox"
export EDITOR="nvim"
export PAGER="less"
export VISUAL="nvim"

export XDG_CACHE_HOME="$HOME/.cache"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"

export PATH
[ -d "$HOME/.dotnet"          ] && PATH="$PATH:$HOME/.dotnet"
[ -d "$HOME/.local/bin"       ] && PATH="$PATH:$HOME/.local/bin"
[ -d "$HOME/.local/scripts"   ] && PATH="$PATH:$HOME/.local/scripts"
[ -d "$XDG_DATA_HOME/gem/bin" ] && PATH="$PATH:$XDG_DATA_HOME/gem/bin"
[ -d "$XDG_DATA_HOME/go/bin"  ] && PATH="$PATH:$XDG_DATA_HOME/go/bin"

export GEM_HOME="$XDG_DATA_HOME/gem"
export GEM_SPEC_CACHE="$XDG_CACHE_HOME/gem"
export GNUPGHOME="$XDG_DATA_HOME/gnupg"
export GOPATH="$XDG_DATA_HOME/go"
export HISTFILE="$XDG_DATA_HOME/bash_history"
export LESSHISTFILE="$XDG_DATA_HOME/lesshst"
export NODE_REPL_HISTORY="$XDG_DATA_HOME/node_repl_history"
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"
export NUGET_PACKAGES="$XDG_CACHE_HOME/NuGetPackages"
export STACK_ROOT="$XDG_DATA_HOME/stack"
export XAUTHORITY="$XDG_RUNTIME_DIR/Xauthority"

export BAT_THEME="Solarized (light)"
export FZF_DEFAULT_COMMAND='fd --unrestricted'
export FZF_DEFAULT_OPTS="--color=light,gutter:#ffffd7"
       FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS --multi"
       FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS --preview-window=right:noborder"
export LESS="--no-init"
       LESS="$LESS --raw-control-chars"

umask 0077

mpd &

[ -z "$DISPLAY" ] && [ "$(tty)" = "/dev/tty1" ] && exec startx

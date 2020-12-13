#!/bin/sh
export BROWSER="brave"
export EDITOR="nvim"
export PAGER="less"
export VISUAL="nvim"

export XDG_CACHE_HOME="$HOME/.cache"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"

export PATH
[ -d "$HOME/.dotnet/tools"    ] && PATH="$PATH:$HOME/.dotnet/tools"
[ -d "$HOME/.local/bin"       ] && PATH="$PATH:$HOME/.local/bin"
[ -d "$HOME/.local/scripts"   ] && PATH="$PATH:$HOME/.local/scripts"
[ -d "$XDG_DATA_HOME/gem/bin" ] && PATH="$PATH:$XDG_DATA_HOME/gem/bin"
[ -d "$XDG_DATA_HOME/go/bin"  ] && PATH="$PATH:$XDG_DATA_HOME/go/bin"
[ -d "$XDG_DATA_HOME/npm/bin" ] && PATH="$PATH:$XDG_DATA_HOME/npm/bin"

export AWS_CLI_HISTORY_FILE="$XDG_DATA_HOME/aws/history"
export AWS_CONFIG_FILE="$XDG_CONFIG_HOME/aws/config"
export AWS_CREDENTIALS_FILE="$XDG_DATA_HOME/aws/credentials"
export AWS_SHARED_CREDENTIALS_FILE="$XDG_DATA_HOME/aws/shared-credentials"
export AWS_WEB_IDENTITY_TOKEN_FILE="$XDG_DATA_HOME/aws/token"
export GEM_HOME="$XDG_DATA_HOME/gem"
export GEM_SPEC_CACHE="$XDG_CACHE_HOME/gem"
export GNUPGHOME="$XDG_DATA_HOME/gnupg"
export GOPATH="$XDG_DATA_HOME/go"
export HISTFILE="$XDG_DATA_HOME/bash/bash_history"
export LESSHISTFILE="$XDG_DATA_HOME/less/lesshst"
export NODE_REPL_HISTORY="$XDG_DATA_HOME/nodejs/node_repl_history"
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"
export NUGET_PACKAGES="$XDG_CACHE_HOME/NuGetPackages"
export STACK_ROOT="$XDG_DATA_HOME/stack"
export XAUTHORITY="$XDG_RUNTIME_DIR/Xauthority"
export _JAVA_AWT_WM_NONREPARENTING=1

export FZF_DEFAULT_COMMAND='fd --unrestricted'
export FZF_DEFAULT_OPTS="--color=dark,gutter:#282828"
       FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS --multi"
       FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS --preview-window=right:noborder"
export LESS="--no-init"
       LESS="$LESS --raw-control-chars"
export LESS_TERMCAP_mb=$(printf "\x1b[1;31m")
export LESS_TERMCAP_md=$(printf "\x1b[1;31m")
export LESS_TERMCAP_me=$(printf "\x1b[0m")
export LESS_TERMCAP_so=$(printf "\x1b[1;44;33m")
export LESS_TERMCAP_se=$(printf "\x1b[0m")
export LESS_TERMCAP_us=$(printf "\x1b[1;32m")
export LESS_TERMCAP_ue=$(printf "\x1b[0m")

umask 0077

[ -x "$(command -v startx)" ] \
	&& [ -z "$DISPLAY" ] \
	&& [ "$(tty)" = "/dev/tty1" ] \
	&& exec startx

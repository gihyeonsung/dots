#!/usr/bin/env bash
# ~/.bashrc

# return if this script is sourced by non-interactive shell
[[ $- != *i* ]] && return

# get get branch message (this message will be used with prompt)
get_gitbranch_msg() {
  git branch 2> /dev/null | grep "\*" | sed "s/* \(.*\)/ on \1/"
}

# set bash prompt
PS1="\n\w\$(get_gitbranch_msg) > "

# set aliases
alias b="bat"
alias c="cat"
alias g="git"
alias l="ls --almost-all --color=always --group-directories-first --human-readable --size -x"
alias ll="ls --all --color=always --format=long --group-directories-first --human-readable --indicator-style=classify --time-style=posix-long-iso"
alias m="make"
alias v="nvim"

# set privileged aliases
alias s="sudo"
alias sb="sudo bat"
alias sc="sudo cat"
alias sd="sudo docker"
alias sdc="sudo docker-compose"
alias sm="sudo make"
alias sp="sudo pacman"
alias ss="sudo systemctl"

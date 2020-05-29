#!/usr/bin/env bash
# ~/.bashrc

get_gitbranch() {
  git branch 2> /dev/null \
    | grep "\*" \
    | sed -E "s/\* (\w+)/ (\1)/"
}
PS1="\w\$(get_gitbranch): "

alias \
  b="bat" \
  c="cat" \
  g="git" \
  l="ls --almost-all --color=always" \
  ll="ls --all --color=always --format=long --group-directories-first --human-readable --indicator-style=classify --time-style=posix-long-iso" \
  m="make"\
  v="nvim"\

alias \
  s="sudo" \
  sd="sudo docker" \
  sdc="sudo docker-compose" \
  sm="sudo make" \
  sp="sudo pacman" \
  ss="sudo systemctl" \

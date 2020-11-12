#!/usr/bin/env bash
get_gitbranch() {
  git branch 2> /dev/null \
    | grep "\*" \
    | sed -E "s/\* (.+)/ (\1)/"
}
PS1="\w\$(get_gitbranch): "

GPG_TTY=$(tty)
export GPG_TTY

alias \
  d="docker" \
  dc="docker-compose" \
  g="git" \
  v="nvim" \
  y="yay"

alias \
  cp="cp --interactive --verbose" \
  mv="mv --interactive --verbose" \
  rm="rm --interactive=once --verbose"

alias \
  diff="diff --color=auto" \
  grep="grep --color=auto" \
  ip="ip --color=auto" \
  l="ls --color=auto --group-directories-first -alh"

alias \
  s="sudo" \
  ss="sudo systemctl" \
  su="sudo su"

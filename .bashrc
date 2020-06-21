#!/usr/bin/env bash
get_gitbranch() {
  git branch 2> /dev/null \
    | grep "\*" \
    | sed -E "s/\* (\w+)/ (\1)/"
}
PS1="\w\$(get_gitbranch): "

GPG_TTY=$(tty)
export GPG_TTY

alias cp="cp --interactive \
             --verbose"
alias diff="diff --color=auto"
alias g="git"
alias grep="grep --color=auto"
alias l="ls --almost-all \
            --color=auto"
alias ll="ls --all \
             --color=auto \
             --format=long \
             --group-directories-first \
             --human-readable \
             --indicator-style=classify \
             --time-style=posix-long-iso"
alias mv="mv --interactive \
             --verbose"
alias rm="rm --interactive=once \
             --verbose"
alias v="nvim"

alias s="sudo"
alias sp="sudo pacman"
alias ss="sudo systemctl"

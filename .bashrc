[[ $- != *i* ]] && return

alias ls='ls --color=auto'

gitbranch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ on \1/'
}

PS1="\n\w\$(gitbranch) » "

alias l="ls -Aksh --color=tty"
alias ll="ls -Akshl --color=tty"
alias c="cat"
alias v="nvim"

alias s="sudo"
alias sv="sudo nvim"
alias sc="sudo cat"
alias sd="sudo docker"
alias ss="sudo systemctl"
alias sp="sudo pacman"

alias g="git"
alias gs="git status"
alias ga="git add"
alias gc="git commit"
alias gl="git log"

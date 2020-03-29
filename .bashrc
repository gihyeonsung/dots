[[ $- != *i* ]] && return

gitbranch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ on \1/'
}

PS1="\n\w\$(gitbranch) » "

alias b="bat"
alias c="cat"
alias l="ls -Aksh --color=tty"
alias ll="ls -Akshl --color=tty"
alias v="nvim"

alias s="sudo"
alias sb="sudo bat"
alias sc="sudo cat"
alias sd="sudo docker"
alias sdc="sudo docker-compose"
alias sl="sudo ls -Aksh --color=tty"
alias sll="sudo ls -Akshl --color=tty"
alias sm="sudo make"
alias sp="sudo pacman"
alias ss="sudo systemctl"
alias sv="sudo nvim"

alias g="git"
alias ga="git add"
alias gc="git commit"
alias gl="git log --format='%C(#56b88a bold)%h%C(reset) %s %C(#bca375 bold)%D%C(reset)' \
  -n 10"
alias gll="git log --format='%C(#56b88a bold)%h%C(reset) %an %ae %ai %C(#bca375 bold)%D%C(reset)%n%B'"
alias gs="git status"

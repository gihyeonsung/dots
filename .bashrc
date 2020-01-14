if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ on \1/'
}

export PS1="\n\e[38;2;181;255;171m\u\e[0m at \e[38;2;234;184;255m\h\e[0m in \e[38;2;255;243;144m\w\e[0m\$(parse_git_branch)\n» "

alias l="ls -Aksh --color=tty"
alias ll="ls -Akshl --color=tty"
alias c="cat"
alias v="vim"

alias s="sudo"
alias sv="sudo vim"
alias sc="sudo cat"
alias sd="sudo docker"
alias ss="sudo systemctl"

alias g="git"
alias ga="git add"
alias gc="git commit"

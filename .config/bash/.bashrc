#!/usr/bin/env bash
get_gitbranch() {
	git branch 2> /dev/null \
		| grep "\*" \
		| sed -E "s/\* (.+)/ (\1)/"
}
PS1="\w\$(get_gitbranch): "

[ -f "$XDG_CONFIG_HOME/shell/alias" ] && source "$XDG_CONFIG_HOME/shell/alias"

#!/usr/bin/env zsh
get_gitbranch() {
	git branch 2> /dev/null \
		| grep "\*" \
		| sed -E "s/\* (.+)/ (\1)/"
}
setopt PROMPT_SUBST
PROMPT="%~\$(get_gitbranch): "

[ -f "$XDG_CONFIG_HOME/shell/alias" ] && source "$XDG_CONFIG_HOME/shell/alias"

bindkey "^P" up-line-or-search
bindkey "^N" down-line-or-search

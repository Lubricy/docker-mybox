if [[ ! -d ~/.zplug ]]; then
	git clone https://github.com/zplug/zplug ~/.zplug
	source ~/.zplug/init.zsh && zplug update
fi

source ~/.zplug/init.zsh

zplug "zsh-users/zsh-syntax-highlighting"
zplug "clvv/fasd", as:command, use:fasd
zplug "plugins/git", from:oh-my-zsh, if:"(( $+commands[git] ))"
zplug "plugins/fasd", from:oh-my-zsh, on:"clvv/fasd"

zplug "zsh-users/zsh-history-substring-search", on:"zsh-users/zsh-syntax-highlighting"
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

if ! zplug check --verbose; then
	printf "Install [y/N]: "
	if read -q; then
		echo; zplug install
	else
		echo
	fi
fi

zplug load

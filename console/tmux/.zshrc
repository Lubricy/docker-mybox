# Lines configured by zsh-newuser-install
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/root/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

zstyle ':comletion:*' menu select

# backward delete path
my-backward-delete-word() {
	local WORDCHARS=${WORDCHARS/\//}
	zle backward-delete-word
}
zle -N my-backward-delete-word
bindkey '^W' my-backward-delete-word

if [ -d $HOME/.zshrc.d ]; then
	for file in $HOME/.zshrc.d/*.zsh; do
		source $file
	done
fi

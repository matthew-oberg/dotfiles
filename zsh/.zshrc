setopt autocd extendedglob nomatch

unsetopt beep notify

zstyle :compinstall filename '/home/matthew/.config/zsh/.zshrc'

autoload -Uz compinit; compinit

source $ZDOTDIR/aliases
source $ZDOTDIR/local-aliases

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh

eval $(thefuck --alias)

[[ $- != *i* ]] && return

neofetch

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt beep
bindkey -v
zstyle :compinstall filename '~/.zshrc'
autoload -Uz compinit
compinit

PROMPT='%n@%m %~> '

. ~/.dotfiles/aliases
. ~/.dotfiles/dircolors

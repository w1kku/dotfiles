HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory autocd extendedglob nomatch notify correct_all
unsetopt beep
bindkey -v
zstyle :compinstall filename ~/.zshrc
autoload -Uz compinit
compinit
source /usr/share/doc/pkgfile/command-not-found.zsh
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias diff='diff --color=auto'

export EDITOR="/usr/bin/nvim"
PROMPT="%F{cyan}%~%f%F{blue}%#%f "
RPROMPT="%F{238}%*%f"

export LESSCHARSET=UTF-8

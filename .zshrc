# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory autocd extendedglob nomatch notify
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/wikku/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
source /usr/share/doc/pkgfile/command-not-found.zsh
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias diff='diff --color=auto'

export EDITOR="/usr/bin/nvim"
PROMPT="%F{cyan}%~%f%F{blue}%#%f "
RPROMPT="%F{238}%*%f"

export LESSCHARSET=UTF-8

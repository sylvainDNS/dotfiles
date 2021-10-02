export ARCHFLAGS="-arch x86_64"

export EDITOR=vim

# GPG signing key
export GPG_TTY=$(tty)

# AUR package manager
export PARU_CONF=~/.paru.conf

# https://github.com/starship/starship
eval "$(starship init zsh)"
export STARSHIP_CONFIG=~/.starship

# volta.sh
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"

# Python
export PATH="$HOME/.local/bin:$PATH"

# ----- #
#  ZSH  #
# ----- #

# Completion
# Case unsensitive
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

# Git
zstyle ':completion:*:*:git:*' script ~/.git-completion.bash
fpath=(~/.zsh $fpath)
autoload -Uz compinit && compinit

# Plugins
source ~/.zsh/colored-man-pages.zsh
source ~/.zsh/zsh-autosuggestions.zsh
source ~/.zsh/history.zsh
source ~/.zsh/key-bindings.zsh
source ~/.zsh/yarn-autocompletions.zsh

# --------- #
#  Aliases  #
# --------- #
alias zshreload="source ~/.zshrc"

alias grep="grep --color=auto"

alias ls="lsd"

alias less="less -R"

alias rm="rm -i"
alias cp="cp -i"
alias mv="mv -i"

alias vi3="vim ~/config/i3/config"
alias vz="vim ~/.zshrc"
alias vv="vim ~/.config/nvim/init.vim"
alias vs="vim ~/.starship"
alias vt="vim ~/.tmux.conf"

alias dc="docker-compose"

export ARCHFLAGS="-arch x86_64"
export PATH="$PATH:/etc/yarn/bin"
export PATH="$PATH:`yarn global bin`"
export PATH="$PATH:$HOME/.cargo/bin"

export EDITOR=vim
if [ -e /usr/share/terminfo/x/xterm-256color ]; then
  export TERM='xterm-256color'
else
  export TERM='xterm-color'
fi

# https://github.com/starship/starship
eval "$(starship init zsh)"
export STARSHIP_CONFIG=~/.starship

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

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

alias less="less -R"

alias rm="rm -i"
alias cp="cp -i"
alias mv="mv -i"

alias vz="vim ~/.zshrc"
alias vv="vim ~/.vimrc"
alias vh="vim ~/.hyper.js"
alias vs="vim ~/.starship"
alias vt="vim ~/.tmux.conf"

# Install w/ pacman
alias pmi="sudo pacman -S "
# Update w/ pacman
alias pmu="sudo pacman -Syyu"
# Remove w/ pacman
alias pmr="sudo pacman -Rs "
# Install w/ yay
alias yyi="yay -S "
# Update w/ yay
alias yyu="yay -Syu --devel --timeupdate"
# Remove w/ yay
alias yyr="yay -Rs "
# Clean unneeded dependencies
alias yyc="yay -Yc"

alias dc="docker-compose"

# tmux
alias tn="tmux new -s"
alias ta="tmux attach -t"

alias c="code ."

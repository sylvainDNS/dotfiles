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

## Hyper.js start issue
PROMPT_EOL_MARK=""

source /usr/share/nvm/init-nvm.sh
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

export ZSH="/home/sylvain/.oh-my-zsh"

# ------- #
#  THEME  #
# ------- #
ZSH_THEME=powerlevel10k/powerlevel10k
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# ----------- #
#  Oh My Zsh  #
# ----------- #
HIST_STAMPS="yyyy-mm-dd"

plugins=(
  git
  extract
  git-extras
  docker
  colored-man-pages
  yarn
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# --------- #
#  Aliases  #
# --------- #
alias vz="vim ~/.zshrc"
alias vv="vim ~/.vimrc"
alias vh="vim ~/.hyper.js"
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

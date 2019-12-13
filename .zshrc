export ARCHFLAGS="-arch x86_64"
export PATH="$PATH:/etc/yarn/bin"
export PATH="$PATH:`yarn global bin`"

export EDITOR=vim
if [ -e /usr/share/terminfo/x/xterm-256color ]; then
  export TERM='xterm-256color'
else
  export TERM='xterm-color'
fi

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

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(
  dir_writable
  dir
  vcs
  newline
  status
)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(time)

POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_MODE=nerdfont-complete
POWERLEVEL9K_ROOT_ICON=$'\uF09C'
POWERLEVEL9K_TIME_ICON=$'\uF017'
POWERLEVEL9K_TIME_BACKGROUND=magenta
POWERLEVEL9K_STATUS_BACKGROUND=none

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

# Install w/ pacman
alias pmi="sudo pacman -S "
# Update w/ pacman
alias pmu="sudo pacman -Syyu"
# Remove w/ pacman
alias pmr="sudo pacman -Rs "
# Install w/ yay
alias yyi="yay -S "
# Update w/ yay
alias yyu="yay -Syu"
# Remove w/ yay
alias yyr="yay -Rs "

alias dc="docker-compose"

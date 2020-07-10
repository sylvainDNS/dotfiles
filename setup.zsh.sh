#!/bin/sh

mkdir -p ~/.zsh

cd ~/.zsh && {
    curl -O -J https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash;
    curl -O -J https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.zsh;
    curl -o colored-man-pages.zsh https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/plugins/colored-man-pages/colored-man-pages.plugin.zsh;
    curl -O -J https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/lib/history.zsh;
    curl -O -J https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/lib/key-bindings.zsh;
    curl -O -J https://raw.githubusercontent.com/zsh-users/zsh-autosuggestions/master/zsh-autosuggestions.zsh;
    cd -;
}

rm -f ~/.zcompdump
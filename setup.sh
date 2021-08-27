#!/bin/sh

pathPrefix=`pwd`
SIMPLE_BACKUP_SUFFIX=.old

echo "Create symbolic links" 
ln -brs  ${pathPrefix}/.alacritty.yml ~/
ln -brs ${pathPrefix}/.gitconfig ~/
ln -brs ${pathPrefix}/.gitignore ~/
ln -brs ${pathPrefix}/.starship ~/
mkdir -p ~/.config/nvim
ln -bs ${pathPrefix}/.vimrc ~/.config/nvim/init.vim
ln -brs ${pathPrefix}/.zshrc ~/
ln -brs ${pathPrefix}/.paru.conf ~/
ln -brs ${pathPrefix}/screenshot.sh ~/.config/i3/
ln -bs ${pathPrefix}/.i3config ~/.config/i3/config

echo "Install ZSH plugins"
sh ./setup.zsh.sh

echo "Install VIM plugins"
sh ./setup.vim.sh

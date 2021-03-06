#!/bin/sh

echo "Create symbolic links" 
ln -rs  ~/Workspace/dotfiles/.alacritty.yml ~/
ln -rs ~/Workspace/dotfiles/.gitconfig ~/
ln -rs ~/Workspace/dotfiles/.gitignore ~/
ln -rs ~/Workspace/dotfiles/.starship ~/
ln -rs ~/Workspace/dotfiles/.tmux.conf ~/
mkdir -p ~/.config/nvim
ln -s ~/Workspace/dotfiles/.vimrc ~/.config/nvim/init.vim
ln -rs ~/Workspace/dotfiles/.zshrc ~/

echo "Install ZSH plugins"
sh ./setup.zsh.sh

echo "Install VIM plugins"
sh ./setup.vim.sh

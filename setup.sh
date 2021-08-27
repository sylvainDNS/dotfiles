#!/bin/sh

echo "Backup existing config"
mv ~/.alacritty.yml ~/.alacritty.old.yml
mv ~/.gitconfig ~/.gitconfig.old
mv ~/.gitignore ~/.gitignore.old
mv ~/.starship ~/.starship.old
mv ~/.zshrc ~/.zshrc.old
mv ~/.paru.conf ~/.paru.conf.old

echo "Create symbolic links" 
ln -rs  ~/Workspace/dotfiles/.alacritty.yml ~/
ln -rs ~/Workspace/dotfiles/.gitconfig ~/
ln -rs ~/Workspace/dotfiles/.gitignore ~/
ln -rs ~/Workspace/dotfiles/.starship ~/
mkdir -p ~/.config/nvim
ln -s ~/Workspace/dotfiles/.vimrc ~/.config/nvim/init.vim
ln -rs ~/Workspace/dotfiles/.zshrc ~/
ln -rs ~/Workspace/dotfiles/.paru.conf ~/

echo "Install ZSH plugins"
sh ./setup.zsh.sh

echo "Install VIM plugins"
sh ./setup.vim.sh

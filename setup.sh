#!/bin/sh

echo "Install packages"
sh ./setup/packages.sh

echo "Install config files"
sh ./setup/config.sh

echo "Install ZSH plugins"
sh ./setup/zsh.sh

echo "Install VIM plugins"
sh ./setup/vim.sh

#!/bin/bash
# This script installs dotfiles

shopt -s dotglob # Make hidden files visible

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
	https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

files=".zshrc .config/nvim/init.vim"
mkdir -p ~/dotfiles_old
for file in $files; do
	echo "Moving ~/$file (if exists) to ~/dotfiles_old/"
	mv ~/$file ~/dotfiles_old/
	echo "Creating symlink"
	ln -s $(pwd)/$file ~/$file
done

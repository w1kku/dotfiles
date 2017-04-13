#!/bin/bash
# This script installs dotfiles

shopt -s dotglob # Make hidden files visible
files=".zshrc .config/nvim/init.vim"
mkdir ~/dotfiles_old
for file in $files; do
	echo "Moving ~/$file to ~/dotfiles_old/"
	mv ~/$file ~/dotfiles_old/
	echo "Creating symlink"
	ln -s $(pwd)/$file ~/$file
done

#!/usr/bin/env bash

ln -s $(pwd)/bin $HOME/bin

ln -s $(pwd)/.aliases.bashrc $HOME/.aliases.bashrc
ln -s $(pwd)/gitconfig $HOME/.gitconfig

echo "source $HOME/.aliases.bashrc" >> $HOME/.bashrc
echo "PATH=\$PATH:$HOME/bin" >> $HOME/.bashrc

git clone https://latentflip:${GH_DOTFILES_PAT}:@github.com/latentflip/github-dotfiles $HOME/github-dotfiles

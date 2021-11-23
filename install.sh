#!/usr/bin/env bash

mkdir $HOME/bin
ln -s $(pwd)/bin/git-recent $HOME/bin

ln -s $(pwd)/.aliases.bashrc $HOME/.aliases.bashrc
ln -s $(pwd)/gitconfig $HOME/.gitconfig

echo source $HOME/.aliases.bashrc >> $HOME/.bashrc
echo "PATH=$PATH/bin" >> $HOME/.bashrc
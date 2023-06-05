#!/usr/bin/env bash

if [[ ! -L "$HOME/bin" ]]; then
  ln -s $(pwd)/bin $HOME/bin
fi
if [[ ! -L "$HOME/.gitconfig" ]]; then
  ln -s $(pwd)/gitconfig $HOME/.gitconfig
fi

echo "" >> $HOME/.zshrc
echo "####" >> $HOME/.zshrc
echo "# Installed by $(pwd)" >> $HOME/.zshrc
echo "PATH=\$PATH:$HOME/bin" >> $HOME/.zshrc

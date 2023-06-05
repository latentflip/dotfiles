#!/usr/bin/env bash

if [[ ! -L "$HOME/bin" ]]; then
  ln -s $(pwd)/bin $HOME/bin
fi
if [[ ! -L "$HOME/.gitconfig" ]]; then
  ln -s $(pwd)/.gitconfig $HOME/.gitconfig
fi
if [[ ! -L "$HOME/.zshrc" ]]; then
  ln -s $(pwd)/.zshrc $HOME/.zshrc
fi


#!/bin/zsh

cd "$(dirname "$0")"

#shell
rm -f ~/.zshrc
cp -f zshrc ~/.zshrc

#vim
if [ ! -f ~/.vim/colors/solarized.vim ]; then #https://github.com/altercation/Vim-colors-solarized - Copyright (c) 2011 Ethan Schoonover
  rm -rf ~/.vim
  mkdir ~/.vim
  cp -rf vim ~/.vim
fi

rm -f ~/.vimrc
cp -f vimrc ~/.vimrc

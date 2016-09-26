#!/usr/bin/env

CONSOLE_PREFIX="\t->"
cd "$(dirname "$0")"

#shell
PROFILEFILENAME="$HOME/.profile"
echo "$CONSOLE_PREFIX Create .profile..."
[[ ! -e $PROFILEFILENAME ]] && touch $PROFILEFILENAME
if [[ -z $(cat $PROFILEFILENAME | grep -m 1 custom-box) ]]; then
  cat << PROFILE >> $PROFILEFILENAME
    #custom-box section - begin
    . ~/.dotfiles/aliases
    . ~/.dotfiles/dircolors
    #custom-box section - end
PROFILE
fi

#vim
echo "$CONSOLE_PREFIX Install Solarized color scheme for Vim..."
if [ ! -f ~/.vim/colors/solarized.vim ]; then #https://github.com/altercation/Vim-colors-solarized - Copyright (c) 2011 Ethan Schoonover
  rm -rf ~/.vim
  mkdir ~/.vim
  cp -rf vim/* ~/.vim/
fi

echo "$CONSOLE_PREFIX Copy .vimrc..."
rm -f ~/.vimrc
cp -f vimrc ~/.vimrc

echo "$CONSOLE_PREFIX Install Vundle and Vim plugins..."
if [ ! -d ~/.vim/bundle/Vundle.vim ]; then
  rm -rf ~/.vim/bundle
  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim >/dev/null 2>&1
  vim +PluginInstall +qall >/dev/null 2>&1
fi

echo "$CONSOLE_PREFIX Done."

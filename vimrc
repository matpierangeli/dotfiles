"-> vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'bling/vim-airline'
call vundle#end()
filetype plugin indent on

"-> custom
set laststatus=2
set number
set tabstop=4
set expandtab
syntax enable

"-> colors
let g:solarized_termcolors=256
set background=dark
colorscheme solarized

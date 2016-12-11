"-> vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'bling/vim-airline'

"--> javascript "http://oli.me.uk/2013/06/29/equipping-vim-for-javascript/
"highlighting
Plugin 'jelera/vim-javascript-syntax'
Plugin 'pangloss/vim-javascript'
"indentation
Plugin 'nathanaelkane/vim-indent-guides'
"automatic closing of quotes, parenthesis, brackets, etc.
"Plugin 'Raimondi/delimitMate'

"--> elixir
"Plugin 'elixir-lang/vim-elixir'

call vundle#end()

filetype plugin indent on

"-> custom
set laststatus=2
set number
set tabstop=2
set shiftwidth=2
set expandtab
syntax enable

"-> colors
let g:solarized_termcolors=256
set background=dark
colorscheme solarized
"colorscheme monokai
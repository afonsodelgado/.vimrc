syntax enable
set background=dark
" solarized options 
let g:solarized_visibility = "high"
let g:solarized_contrast = "high"
let g:solarized_termcolors=256
colorscheme solarized


set backspace=2
set backspace=indent,eol,start
nmap :E :Explore

set number
set showmatch

set incsearch
set hlsearch

set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tpope/vim-fugitive'
Plugin 'bling/vim-airline'
Plugin 'dandorman/vim-colors'
Plugin 'easymotion/vim-easymotion'
Plugin 'mattn/emmet-vim'
Plugin 'townk/vim-autoclose'
Plugin 'roman/golden-ratio'
Plugin 'pangloss/vim-javascript'
Plugin 'hdima/python-syntax'
Plugin 'gorodinskiy/vim-coloresque'
call vundle#end()            " required
filetype plugin indent on    " required

set laststatus=2

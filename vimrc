set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-surround'
Bundle 'tomasr/molokai'

syntax on
filetype plugin indent on

set tabstop=2
set shiftwidth=2
set expandtab

let mapleader=","

set background=dark
colorscheme molokai
set number

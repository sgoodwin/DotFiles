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
Bundle 'jelera/vim-javascript-syntax'
Bundle 'tomasr/molokai'

filetype plugin indent on
syntax on

let mapleader=","

set background=dark
colorscheme molokai

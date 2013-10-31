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
Bundle 'tpope/vim-commentary'
Bundle 'tomasr/molokai'
Bundle 'tpope/vim-markdown'
Bundle 'wookiehangover/jshint.vim'

syntax on
filetype plugin indent on

set tabstop=2
set shiftwidth=2
set expandtab

let mapleader=","

set background=dark
colorscheme molokai
set number

set bs=2


" No more arrow keys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" Disable search hilighting with <C-l>
noremap <silent> <C-l> : <C-u> nohlsearch <CR><C-l>

" Hilight searches
set hls

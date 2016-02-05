set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

" let Vundle manage Vundle
" required! 
Plugin 'gmarik/Vundle.vim'

" My Plugins here:
Plugin 'kien/ctrlp.vim'
Plugin 'vim-scripts/tf.vim'
Plugin 'vim-scripts/haskell.vim'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary'
Plugin 'tomasr/molokai'
Plugin 'tpope/vim-markdown'
Plugin 'wookiehangover/jshint.vim'
Plugin 'kballard/vim-swift'
Plugin 'noahfrederick/vim-hemisu'
Plugin 'godlygeek/tabular'
Plugin 'Lokaltog/vim-distinguished'

call vundle#end()

syntax on
filetype plugin indent on

set tabstop=2
set shiftwidth=2
set expandtab

let mapleader=","
noremap \ ,

set background=dark
colorscheme distinguished
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

" Reformat whole buffer with ',='
map <Leader>= gg=G

" Show invisibles
set list
set listchars=tab:▸\ ,eol:¬

" Use matchit
runtime macros/matchit.vim

" Spellchecking for markdowns
autocmd BufRead,BufNewFile *.md setlocal spell spelllang=en_us
set complete+=kspell

" Word wrapping for markdown
autocmd Filetype markdown setlocal wrap
autocmd Filetype markdown setlocal linebreak
autocmd Filetype markdown setlocal nolist
autocmd Filetype markdown setlocal columns=80

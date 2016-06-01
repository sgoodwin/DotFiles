set nocompatible
filetype off

so ~/.vimpluginsrc

" No more arrow keys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

syntax on
filetype plugin indent on

" ----Formatting and such

set background=dark
colorscheme distinguished

set tabstop=2
set shiftwidth=2
set expandtab
set number
set bs=2
set relativenumber
set suffixesadd=.swift
set autowrite

" Show invisibles
set list
set listchars=tab:▸\ ,eol:¬

" ----Searching----

" Disable search hilighting with <C-l>
noremap <silent> <C-l> : <C-u> nohlsearch <CR><C-l>

" Hilight searches
set hls

" ----Leader commands----

let mapleader=","
noremap \ ,

" Reformat whole buffer with ',='
map <Leader>= gg=G

" Format selected text into columns
vmap <Leader>t !column -t<CR>gg=G

" ----Extra Markdown Stuff----

" Spellchecking for markdowns
autocmd BufRead,BufNewFile *.md setlocal spell spelllang=en_us
set complete+=kspell

" Word wrapping for markdown
autocmd Filetype markdown setlocal wrap
autocmd Filetype markdown setlocal linebreak
autocmd Filetype markdown setlocal nolist
autocmd Filetype markdown setlocal columns=80

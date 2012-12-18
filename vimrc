set nocompatible

call pathogen#infect()
call pathogen#helptags()

syntax on
filetype plugin indent on

if has('gui_running')
    set background=light
else
    set background=dark
endif
colorscheme solarized

if has("gui_running")
	" set guifont=DejaVuSansMono:h14
	set guifont=EssentialPragmataPro:h14
	set guioptions=egmrt
endif

set modelines=0
set noautochdir

set hidden
set ruler
set number

set ignorecase 
set smartcase                     
set hlsearch
set incsearch

set backspace=indent,eol,start
set tabstop=2
set shiftwidth=2


set nocompatible

call pathogen#infect()
call pathogen#helptags()

syntax on
filetype plugin indent on

set background=dark
colorscheme solarized
set guifont=Monaco:h14
if has("gui_running")
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

"xcode make program
"set makeprg=xcodebuild\ -configuration\ Debug\ -sdk\ iphonesimulator5.0
"set errorformat=%f:%l:\ error:\ %m,%f:%l:\ warning:\ %m
set errorformat=
      \%f:%l:%c:{%*[^}]}:\ error:\ %m,
      \%f:%l:%c:{%*[^}]}:\ fatal\ error:\ %m,
      \%f:%l:%c:{%*[^}]}:\ warning:\ %m,
      \%f:%l:%c:\ error:\ %m,
      \%f:%l:%c:\ fatal\ error:\ %m,
      \%f:%l:%c:\ warning:\ %m,
      \%f:%l:\ error:\ %m,
      \%f:%l:\ fatal\ error:\ %m,
      \%f:%l:\ warning:\ %m

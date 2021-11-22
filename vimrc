set nocompatible
filetype off

set secure

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
colorscheme janah

set tabstop=2
set shiftwidth=2
set expandtab
set number
set bs=2
set numberwidth=2
set suffixesadd=.swift
set autowrite

" Status Line
set laststatus=2

set statusline=
set statusline+=%t\                    " path
set statusline+=%=%1*%y%*\              " file type
set statusline+=%3*%{g:asyncrun_status}%*

" Show invisibles
set list
set listchars=tab:▸\ ,eol:¬

" ----Leader commands----

let mapleader=","
noremap \ ,

" Reformat whole buffer with ',='
noremap <Leader>= gg=G

" Format selected text into columns
vnoremap <Leader>t !column -t<CR>gg=G

" Line up equal signs and colons
nnoremap <Leader>a= :Tabularize /=<CR>
vnoremap <Leader>a= :Tabularize /=<CR>
nnoremap <Leader>a: :Tabularize /:\zs<CR>
vnoremap <Leader>a: :Tabularize /:\zs<CR>

" Editing Mappings
nnoremap <Leader>ev :vsplit $MYVIMRC<cr>
nnoremap <Leader>sv :source $MYVIMRC<cr>

" ----For Podfiles----
augroup podfile
  autocmd BufNewFile,BufRead Podfile set syntax=ruby
augroup END

" ----Extra Markdown Stuff----

" " Spellchecking for markdowns
set complete+=kspell

" augroup markdown
"   autocmd!
"   autocmd FileType markdown setlocal spell spelllang=en_us

  " " Word wrapping for markdown
  " autocmd Filetype markdown setlocal wrap
  " autocmd Filetype markdown setlocal linebreak
  " autocmd Filetype markdown setlocal nolist
  " autocmd Filetype markdown setlocal columns=80
" augroup END

augroup vimfiles
  " Proper comment string for vim files
  autocmd!
  autocmd FileType vim setlocal commentstring=\"\ %s
augroup END

" Ripgrep
set grepprg=rg\ --vimgrep\ --no-heading
set grepformat=%f:%l:%c:%m,%f:%l:%m

" Vim-swift
let g:swift_device = 'iPhone 6'
let g:swift_platform = 'iphonesimulator'

" vim-markdown
let g:markdown_fenced_languages = ['javascript', 'go', 'ruby', 'swift']

" vim-commentary
autocmd FileType ruby setlocal commentstring=#\ %s
let g:neodark#use_256color = 1

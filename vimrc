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
colorscheme hemisu

set tabstop=2
set shiftwidth=2
set expandtab
set number
set bs=2
set relativenumber
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

" Hilight searches
set hls

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

" ----Extra Markdown Stuff----

" Spellchecking for markdowns
set complete+=kspell

augroup markdown
  autocmd!
  autocmd FileType markdown setlocal spell spelllang=en_us

  " Word wrapping for markdown
  autocmd Filetype markdown setlocal wrap
  autocmd Filetype markdown setlocal linebreak
  autocmd Filetype markdown setlocal nolist
  autocmd Filetype markdown setlocal columns=80
augroup END

augroup vimfiles
  " Proper comment string for vim files
  autocmd!
  autocmd FileType vim setlocal commentstring=\"\ %s
augroup END

" Incsearch by hayabusa
" noremap /  <Plug>(incsearch-forward)
" noremap ?  <Plug>(incsearch-backward)
" noremap g/ <Plug>(incsearch-stay)

" Vim-swift
let g:swift_device = 'iPhone 6'
let g:swift_platform = 'iphonesimulator'

nnoremap <leader>b :AsyncRun xcodebuild -scheme TheoryDrils -destination name=iPhone\ SE,platform=iOS\ Simulator \| xcpretty<cr>
nnoremap <leader>u :AsyncRun xcodebuild test -scheme TheoryDrills -destination name=iPhone\ SE,platform=iOS\ Simulator \| xcpretty<cr>

" Jump to the first placeholder by typing `<C-k>`.
autocmd FileType swift imap <buffer> <C-k> <Plug>(autocomplete_swift_jump_to_placeholder)

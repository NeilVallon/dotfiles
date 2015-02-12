set encoding=utf-8

set nu

execute pathogen#infect()

syntax on

colorscheme twilight

set autoindent
set tabstop=2

set backspace=indent,eol,start
:fixdel
:set backspace=2

filetype plugin indent on 

:set list
:set listchars=eol:¬,tab:▸\ ,trail:~,extends:>,precedes:<

" keyboard shortcuts
let mapleader = ','
nnoremap <leader>d :NERDTreeToggle<CR>
nnoremap <leader>f :NERDTreeFind<CR>
nnoremap <leader>g :GitGutterToggle<CR>

" plugin settings
let g:go_fmt_command = "goimports"

let g:NERDTreeWinPos = "right"

let g:NERDSpaceDelims=1

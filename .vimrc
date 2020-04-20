" VIM CONFIGURATION FILE "
""""""""""""""""""""""""""

" Turn on syntax highlighting
syntax on

" Show line numbers
set number

" Don't try to be vi compatible
set nocompatible

" Encoding
set encoding=utf-8

" For plugins to load correctly
filetype plugin indent on

" Relatibve numbers
set relativenumber

" Disable auto-comments
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Plugins Instalation
call plug#begin('~/.vim/plugged')

" Auto pairs  
Plug 'jiangmiao/auto-pairs'

" Status bar
Plug 'itchyny/lightline.vim'

" PHP Syntax
Plug 'StanAngeloff/php.vim'

" Color schemes 
Plug 'rafi/awesome-vim-colorschemes'

" PHP indending
Plug '2072/PHP-Indenting-for-VIm'

call plug#end()

" Status bar configuration
set laststatus=2
set noshowmode

" Color scheme configuration
let g:afterglow_inherit_background=1
colorscheme afterglow

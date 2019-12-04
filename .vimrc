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

" Plugins Instalation
call plug#begin('~/.vim/plugged')

" Auto pairs  
Plug 'jiangmiao/auto-pairs'

" Status bar
Plug 'itchyny/lightline.vim'

" PHP Syntax
Plug 'StanAngeloff/php.vim'

call plug#end()

" Status bar configuration
set laststatus=2
set noshowmode



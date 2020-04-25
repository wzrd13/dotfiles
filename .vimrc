" VIM CONFIGURATION FILE "
""""""""""""""""""""""""""

let g:jedi#popup_on_dot = 0

" Plugins Instalation
call plug#begin('~/.vim/plugged')

" Auto pairs  
Plug 'jiangmiao/auto-pairs'

" Better indenting for python
Plug 'Vimjas/vim-python-pep8-indent'

" Fuzzy search files  
" Plug 'kien/ctrlp.vim'  

" Status bar
Plug 'vim-airline/vim-airline'

" Jedi for python
Plug 'davidhalter/jedi-vim' 

" Git support
" Plug 'airblade/vim-gitgutter'

" Color schemes 
Plug 'rafi/awesome-vim-colorschemes'

call plug#end()

" Status bar configuration
set laststatus=2
set noshowmode

" Color scheme configuration
let g:afterglow_inherit_background=1
colorscheme afterglow

" Turn on syntax highlighting
syntax on

" Set path to python
let g:python3_host_prog = '/usr/bin/python3'
let g:python_host_prog = '/usr/bin/python2'

" change cursor per mode
set mouse=a

" Toggle nerdtree on ctrl+n
map <C-n> :NERDTree<CR>
map <C-t> :set nosplitright<CR>:TagbarToggle<CR>:set splitright<CR>

" Show line numbers
set number

" No backup or swap file, live dangerously
set nobackup  

" Swap files give annoying warning
set noswapfile  

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

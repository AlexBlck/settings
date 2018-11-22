set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin("~/.config/nvim/bundle")

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'kevinw/pyflakes-vim'
Bundle 'sickill/vim-pasta'
Bundle 'taylor/vim-zoomwin'
Bundle 'Valloric/YouCompleteMe'
Bundle 'ervandew/supertab'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/powerline'
Plugin 'Townk/vim-autoclose'
Plugin 'vim-airline/vim-airline'
Plugin 'tpope/vim-surround'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Color Scheme
colorscheme xoria256

" split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" <C-W> behaviour
set backspace=indent,eol,start

" PEP 8
set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=79
set expandtab
set autoindent
set fileformat=unix
set showmatch
set cursorline

" Set UTF-8 encoding
set encoding=utf-8

" Pretty code
let python_highlight_all=1
syntax on

" Enable folding
set foldmethod=indent
set foldlevel=99

" Line lumbering
set nu

" Enable folding with the spacebar
nnoremap <space> za

" Colorcolumn
set textwidth=80
set colorcolumn=+1

"python with virtualenv support
py << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  execfile(activate_this, dict(__file__=activate_this))
EOF

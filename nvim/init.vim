set nocompatible

syntax on

set number
set relativenumber

set ignorecase
set smartcase

set incsearch
set hlsearch

set magic

set showmatch

set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set ai
set si

nmap Q <Nop>

set noerrorbells visualbell t_vb=

set noshowmode

filetype plugin on
filetype plugin indent on

map <C-n> :NERDTreeToggle<CR>

let g:ale_sign_column_always = 1

call plug#begin('~/.nvim/plugged')

    Plug 'joshdick/onedark.vim'
    Plug 'itchyny/lightline.vim'
    Plug 'valloric/youcompleteme'
    Plug 'rust-lang/rust.vim'
    Plug 'preservim/nerdtree'
    Plug 'tpope/vim-surround'
    Plug 'preservim/nerdcommenter'
    Plug 'tpope/vim-fugitive'
    Plug 'dense-analysis/ale'

call plug#end()

let g:onedark_termcolors=256
colorscheme onedark

let g:lightline = {'colorscheme': 'onedark'}

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

command! W execute 'w !sudo tee % > /dev/null' <bar> edit!

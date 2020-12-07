set nocompatible

syntax on

set number relativenumber

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

map <F1> :RangerOpenCurrentFile<CR>

map <F2> :GitGutterSignsToggle<CR>
map <F3> :GitGutterLineHighlightsToggle<CR>

nmap <F4> <Plug>(openbrowser-smart-search)
vmap <F5> <Plug>(openbrowser-smart-search)

nnoremap <silent><Leader>n :RangerOpenCurrentFile<CR>
nnoremap <silent><Leader>c :RangerOpenCurrentDir<CR>
nnoremap <silent><Leader>f :RangerOpenProjectRootDir<CR>

map <F11> :set rnu!<CR>

nnoremap <F12> :buffers<CR>:buffer<Space>

nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>

let g:ale_sign_column_always = 1

call plug#begin('~/.nvim/plugged')

    Plug 'joshdick/onedark.vim'
    Plug 'itchyny/lightline.vim'
    Plug 'valloric/youcompleteme'
    Plug 'rust-lang/rust.vim'
    Plug 'tpope/vim-surround'
    Plug 'preservim/nerdcommenter'
    Plug 'tpope/vim-fugitive'
    Plug 'dense-analysis/ale'
    Plug 'airblade/vim-gitgutter'
    Plug 'junegunn/fzf'
    Plug 'tpope/vim-eunuch'
    Plug 'mattn/emmet-vim'
    Plug 'mg979/vim-visual-multi'
    Plug 'tyru/open-browser.vim'
    Plug 'rbgrouleff/bclose.vim'
    Plug 'iberianpig/ranger-explorer.vim'
    Plug 'sheerun/vim-polyglot'

call plug#end()

let g:onedark_termcolors=256
colorscheme onedark

let g:lightline = {'colorscheme': 'onedark'}

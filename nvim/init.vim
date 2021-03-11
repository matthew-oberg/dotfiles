syntax on

set number relativenumber

set ignorecase
set smartcase

set incsearch
set nohlsearch

set magic

set showmatch

set nowrap

set nocompatible

set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set ai
set si

set scrolloff=5

set noerrorbells visualbell t_vb=

set noshowmode

filetype on
filetype plugin on
filetype plugin indent on

nmap Q <Nop>

let mapleader = ","

map <F1> :RangerOpenCurrentFile<CR>

map <F2> :GitGutterSignsToggle<CR>

nmap <F4> <Plug>(openbrowser-smart-search)

map <F9> :set scl=yes<CR>
map <F10> :set nu! <bar> :set rnu! <bar> :set scl=no<CR>
map <F11> :set rnu!<CR>

nnoremap <F12> :buffers<CR>:buffer<Space>

nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>

call plug#begin('~/.nvim/plugged')

    Plug 'joshdick/onedark.vim'
    Plug 'itchyny/lightline.vim'
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-commentary'
    Plug 'tpope/vim-fugitive'
    Plug 'dense-analysis/ale'
    Plug 'airblade/vim-gitgutter'
    Plug 'mg979/vim-visual-multi'
    Plug 'tyru/open-browser.vim'
    Plug 'rbgrouleff/bclose.vim'
    Plug 'iberianpig/ranger-explorer.vim'
    Plug 'sheerun/vim-polyglot'
    Plug 'ycm-core/YouCompleteMe'
    Plug 'maximbaz/lightline-ale'
    Plug 'vim-scripts/ShowTrailingWhitespace'

    Plug 'vim-jp/vim-cpp'
    Plug 'pboettch/vim-cmake-syntax'
    Plug 'tfnico/vim-gradle'
    Plug 'othree/html5.vim'
    Plug 'pangloss/vim-javascript'
    Plug 'leshill/vim-json'
    Plug 'dzeban/vim-log-syntax'
    Plug 'tbastos/vim-lua'
    Plug 'chr4/nginx.vim'
    Plug 'vim-perl/vim-perl'
    Plug 'stanangeloff/php.vim'
    Plug 'vim-python/python-syntax'
    Plug 'rust-lang/rust.vim'
    Plug 'arzg/vim-sh'
    Plug 'matt-deacalion/vim-systemd-syntax'
    Plug 'hail2u/vim-css3-syntax'

call plug#end()

let g:onedark_termcolors=256
colorscheme onedark

let g:lightline = {'colorscheme': 'onedark'}

let g:lightline.component_expand = {
      \  'linter_checking': 'lightline#ale#checking',
      \  'linter_infos': 'lightline#ale#infos',
      \  'linter_warnings': 'lightline#ale#warnings',
      \  'linter_errors': 'lightline#ale#errors',
      \  'linter_ok': 'lightline#ale#ok',
      \ }

let g:lightline.component_type = {
      \     'linter_checking': 'right',
      \     'linter_infos': 'right',
      \     'linter_warnings': 'warning',
      \     'linter_errors': 'error',
      \     'linter_ok': 'right',
      \ }

let g:lightline.active = { 'right': [['linter_checking', 'linter_errors', 'linter_warnings', 'linter_infos', 'linter_ok'], ['lineinfo'], ['percent'], ['fileformat', 'fileencoding', 'filetype']] }

highlight ShowTrailingWhitespace ctermbg=Red guibg=Red

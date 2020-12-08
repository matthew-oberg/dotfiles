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

set noerrorbells visualbell t_vb=

set noshowmode

filetype plugin on
filetype plugin indent on

nmap Q <Nop>

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
    Plug 'tpope/vim-surround'
    Plug 'preservim/nerdcommenter'
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

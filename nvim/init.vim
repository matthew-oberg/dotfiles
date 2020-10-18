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

set noshowmode

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_aggregate_errors = 1

let g:syntastic_c_checkers = ['cppcheck', 'cppclean', 'flawfinder']
let g:syntastic_cpp_checkers = ['cppcheck', 'cppclean', 'flawfinder']
let g:syntastic_cmake_checkers = ['cmakelint']
let g:syntastic_css_checkers = ['stylelint']
let g:syntastic_go_checkers = ['go']
let g:syntastic_html_checkers = ['tidy', 'jshint']
let g:syntastic_javascript_checkers = ['jsl', 'jshint']
let g:syntastic_java_checkers = ['checkstyle', 'java']
let g:syntastic_json_checkers = ['jsonval']
let g:syntastic_lisp_checkers = ['clisp']
let g:syntastic_lua_checkers = ['luac']
let g:syntastic_markdown_checkers = ['textlint']
let g:syntastic_perl_checkers = ['perl']
let g:syntastic_php_checkers = ['php', 'phplint', 'phpmd', 'phpstan']
let g:syntastic_r_checkers = ['lintr']
let g:syntastic_rmd_checkers = ['lintr']
let g:syntastic_sh_checkers = ['shellcheck']
let g:syntastic_sql_checkers = ['sqlint']
let g:syntastic_xml_checkers = ['xmllint']

filetype plugin on
filetype plugin indent on

map <C-n> :NERDTreeToggle<CR>

call plug#begin('~/.nvim/plugged')

Plug 'itchyny/lightline.vim'
Plug 'ycm-core/YouCompleteMe'
Plug 'vim-syntastic/syntastic'
Plug 'rust-lang/rust.vim'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-surround'
Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-fugitive'

call plug#end()

set nocompatible

call plug#begin('~/.vim/plugged')

Plug 'dense-analysis/ale'
Plug 'itchyny/lightline.vim'
Plug 'maximbaz/lightline-ale'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'Yggdroot/indentLine'
Plug 'vim-python/python-syntax'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'
Plug 'ycm-core/YouCompleteMe', { 'do': './install.py --clang-completer --system-libclang' }
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'bkad/CamelCaseMotion'
Plug 'mhinz/vim-signify'
Plug 'tyrannicaltoucan/vim-quantum'
Plug 'iamcco/markdown-preview.nvim'

call plug#end()

syntax on

" vcs gutter
let g:signify_sign_delete            = '-'
let g:signify_sign_delete_first_line = '-'

let g:ale_sign_error = '⤫'
let g:ale_sign_warning = '⚠' 

" Enable integration with airline.
let g:lightline = {}

let g:lightline.component_expand = {
      \  'linter_checking': 'lightline#ale#checking',
      \  'linter_warnings': 'lightline#ale#warnings',
      \  'linter_errors': 'lightline#ale#errors',
      \  'linter_ok': 'lightline#ale#ok',
      \ } 

let g:lightline.component_type = {
      \     'linter_checking': 'left',
      \     'linter_warnings': 'warning',
      \     'linter_errors': 'error',
      \     'linter_ok': 'left',
      \ }

let g:lightline.active = { 'right': [[ 'linter_checking', 'linter_errors', 'linter_warnings', 'linter_ok' ]] }

" colorscheme

let g:quantum_black=1

let g:lightline = {
      \ 'colorscheme': 'quantum',
      \ }

colorscheme quantum

" camelcasemotion

map <silent> w <Plug>CamelCaseMotion_w
map <silent> b <Plug>CamelCaseMotion_b
map <silent> e <Plug>CamelCaseMotion_e
sunmap w
sunmap b
sunmap e

" youcompleteme

let g:ycm_show_diagnostics_ui = 0

" cpp config
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_experimental_template_highlight = 1
let g:cpp_concepts_highlight = 1

let g:python_highlight_all = 1

" indentLine config
let g:indentLine_char = '┆'

" JS config
let g:javascript_plugin_jsdoc = 1
let g:jsx_ext_required = 0

set backspace=2
set ignorecase
set smartcase
set number
set softtabstop=4
set shiftwidth=4
set expandtab
set showcmd
set cursorline
set wildmenu
set wildmode=list
set lazyredraw
set showmatch
set incsearch
set hlsearch
set splitbelow
set splitright
set clipboard=unnamed
set background=dark
set termguicolors

inoremap jj <esc>

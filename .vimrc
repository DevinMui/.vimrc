set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tomasiser/vim-code-dark'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'Rigellute/rigel'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'Yggdroot/indentLine'
Plugin 'vim-python/python-syntax'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-commentary'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'bkad/CamelCaseMotion'
Plugin 'airblade/vim-gitgutter'
Plugin 'tyrannicaltoucan/vim-quantum'
Plugin 'dense-analysis/ale'

call vundle#end()
filetype plugin indent on

syntax on
let g:ale_sign_error = '⤫'
let g:ale_sign_warning = '⚠' " Enable integration with airline.
let g:airline#extensions#ale#enabled = 1

" colorscheme

set background=dark
set termguicolors
let g:quantum_black=1
let g:airline_theme='quantum'
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
set lazyredraw
set showmatch
set incsearch
set hlsearch
set splitbelow
set splitright
set clipboard=unnamed
set termguicolors

inoremap jj <esc>

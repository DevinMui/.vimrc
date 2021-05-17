set nocompatible

call plug#begin('~/.vim/plugged')

Plug 'psf/black'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'dense-analysis/ale'
Plug 'itchyny/lightline.vim'
Plug 'Yggdroot/indentLine'
Plug 'vim-python/python-syntax'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'bkad/CamelCaseMotion'
Plug 'mhinz/vim-signify'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }
Plug 'justinmk/vim-dirvish'
Plug 'kristijanhusak/vim-dirvish-git'
Plug 'editorconfig/editorconfig-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'honza/vim-snippets'
Plug 'mkitt/tabline.vim'
Plug 'tpope/vim-sleuth'

Plug 'lervag/vimtex'

Plug 'preservim/nerdtree'

" Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
" Plug 'maxmellon/vim-jsx-pretty'
Plug 'peitalin/vim-jsx-typescript'

Plug 'drewtempelmeyer/palenight.vim'
Plug 'tyrannicaltoucan/vim-quantum'

call plug#end()

autocmd vimenter * NERDTree

syntax on

" colorscheme
let colorscheme = 'palenight' 
colorscheme palenight
let g:palenight_terminal_italics=1
let g:quantum_black=1

" ale
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '⚠'
let g:ale_linters = {'cpp': ['clang']}

" vcs gutter
let g:signify_sign_delete            = '-'
let g:signify_sign_delete_first_line = '-'

" camelcasemotion
map <silent> w <Plug>CamelCaseMotion_w
map <silent> b <Plug>CamelCaseMotion_b
map <silent> e <Plug>CamelCaseMotion_e
sunmap w
sunmap b
sunmap e

" cpp config
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_experimental_template_highlight = 1
let g:cpp_concepts_highlight = 1

let g:python_highlight_all = 1

" indentLine config
let g:indentLine_char = '┆'
let g:indentLine_concealcursor = ''
let g:indentLine_conceallevel = 1

" JS config
let g:javascript_plugin_jsdoc = 1
let g:jsx_ext_required = 0

set autoindent
set smartindent
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

" coc configuration
" if hidden is not set, TextEdit might fail.
set hidden
set nobackup
set nowritebackup
set cmdheight=2
set updatetime=300
" don't give |ins-completion-menu| messages.
set shortmess+=c
" always show signcolumns
set signcolumn=yes

source ~/.coc.vim

" esc rebind
inoremap jj <esc>

" easier tabs
map <C-t><up> :tabr<cr>
map <C-t><down> :tabl<cr>
map <C-t><left> :tabp<cr>
map <C-t><right> :tabn<cr>

" transparent
hi Normal guibg=NONE ctermbg=NONE

:au VimLeave * set guicursor=a:hor100-blinkon500-blinkoff500-blinkwait500

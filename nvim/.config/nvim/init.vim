"Plugins will be downloaded under here
call plug#begin('~/.vim/plugged')

"Declare list of plugins
Plug 'tpope/vim-sensible'
Plug 'mhartington/oceanic-next'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'othree/yajs.vim'
Plug 'othree/html5.vim'

call plug#end()


"Theme
"if (has("termguicolors"))
"	set termguicolors
"endif

let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set t_Co=256
set encoding=utf-8

syntax enable
colorscheme OceanicNext

let g:airline_theme='oceanicnext'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

"" Disabled compatibility with legacy Vi
set nocompatible

"" Preserve history
"" cap 10k entries back
set history=10000

"" Set syntax on to improve readability
syntax on

"" Show matching parentheses & brackets.
set showmatch

"" Show last command entered at bot corner
set showcmd

"" Draw horiz highlight on cursor line
set cursorline
highlight CursorLine term=bold cterm=bold

"" Enable line numbers
set number

"" Tabs to spaces
set expandtab
set softtabstop=4
set shiftwidth=4
set autoindent
set copyindent

"" Search settings
set ignorecase
set hlsearch
set incsearch

" Theming
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

if (has("termguicolors"))
 set termguicolors
endif

syntax enable
colorscheme OceanicNext

"Airline Settings
let g:airline_theme='oceanicnext'
set laststatus=2

set showmatch
set showmode
set ruler
set number
set tabstop=2
set shiftwidth=2


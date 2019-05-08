call plug#begin('~/.config/nvim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Shougo/deoplete.nvim'
Plug 'klen/python-mode'
Plug 'altercation/vim-colors-solarized'
Plug 'vim-scripts/winmanager'
"Plug 'valloric/youcompleteme'
call plug#end()

"NERDTree Config
map <C-f> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

"PlugIn Config
map <C-i> :PlugInstall<CR>

"AirLine Config
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_theme='simple'

"deoplete Config
let g:deoplete#enable_at_startup = 1

"Solarized Config
syntax enable
if has('gui_running')
    set background=light
else
    set background=dark
endif
"colorscheme solarized

"Python Mode Config
"Pathogen load
"filetype off

"call pathogen#infect()
"call pathogen#helptags()

"filetype plugin indent on
"syntax on

" Spaces & Tabs {{{
set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set shiftwidth=4    " number of spaces to use for autoindent
set expandtab       " tabs are space
set autoindent
set copyindent      " copy indent from the previous line
" }}} Spaces & Tabs

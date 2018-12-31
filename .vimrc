"====================================
"  \    / (")   /\  /\   [][][] [][]                
"   \  /   |   /  \/  \  []  [] []          
"    \/    |  /        \ []     [][]       
"====================================



"TODO: Plugin plans
"	- vundle/vim-plug
"	- autocomplete with deoplete
"	- Auto Pairs for autoclose parentheses
"	- NERDTree
"	- airline (statusline)

"==== PLUGINS FROM VUNDLE ====
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"*** PUT PLUGINS HERE ***

" Auto Completion with deoplete
if has('nvim')
	Plugin 'https://github.com/Shougo/deoplete.nvim.git'
endif

" Airline
Plugin 'https://github.com/vim-airline/vim-airline.git'

" Auto Close {} w/ Auto Pairs
Plugin 'https://github.com/jiangmiao/auto-pairs.git'

" NERDTree
Plugin 'https://github.com/scrooloose/nerdtree.git'

"Palenight Theme
Plugin 'https://github.com/drewtempelmeyer/palenight.vim.git'

"Papercolor theme
Plugin 'https://github.com/NLKNguyen/papercolor-theme.git'

call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"==== Plugin Extras ====
" Use deoplete.
let g:deoplete#enable_at_startup = 1


" Airline
let g:airline#extensions#tabline#enabled = 1


" NERDTree Stuff
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif


"==== Pick Colorscheme ====
"set background=dark
colorscheme palenight
let g:palenight_terminal_italics=1


"==== numbering ====
set number
set relativenumber


"==== indent ====
set smartindent
set tabstop=4
set shiftwidth=4


"==== column marker ====
set colorcolumn=80
highlight ColorColumn guibg=lightgrey


"==== Highlight current line ====
"set cursorline


"==== make bg transparent ====
au ColorScheme * hi Normal ctermbg=none guibg=none
au ColorScheme myspecialcolors hi Normal ctermbg=red guibg=red


"==== set color config ====
syntax on

if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

if(has("termguicolors"))
	set termguicolors
endif


"==== Set up Leader key ====
let mapleader = "\<Space>"


"==== Simple Leader Key Remaps ====
nmap <leader>s :noh<CR>
nmap <leader>h 0
nmap <leader>l $


"==== Other key remaps ====
" Remap window change switching
nmap <silent> <A-k> :wincmd k<CR>
nmap <silent> <A-j> :wincmd j<CR>
nmap <silent> <A-h> :wincmd h<CR>
nmap <silent> <A-l> :wincmd l<CR>


"==== Status line ====
set laststatus=2


"==== Search ====
set smartcase
set incsearch
set hlsearch


"==== Basic Auto Complete ====
set complete=.,w,b,u,t,i
set showcmd


"==== Misc ====
filetype plugin on
set encoding=utf8
set showcmd
set wildmenu

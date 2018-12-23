"====================================
"  \    / (")   /\  /\   [][][] [][]                
"   \  /   |   /  \/  \  []  [] []          
"    \/    |  /        \ []     [][]       
"====================================



"TODO: Plugin plans
"	- vundle/vim-plug
"	- autocomplete with deoplete
"	- delimitMate for autoclose parentheses
"	- NERDTree
"	- airline (statusline)



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


"==== set color config ====
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
set encoding=utf8
set showcmd
set wildmenu

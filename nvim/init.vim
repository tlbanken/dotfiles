"=========================================
" (\  | \    / (")   /\  /\   [][][] [][]                
" | \ |  \  /   |   /  \/  \  []  [] []          
" |  \)   \/    |  /        \ []     [][]       
"=========================================

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

" CoC (LSP autocomplete)
Plugin 'https://github.com/neoclide/coc.nvim.git'

" GitGutter
Plugin 'https://github.com/airblade/vim-gitgutter.git'

" Airline
Plugin 'https://github.com/vim-airline/vim-airline.git'

" Auto Close {} w/ Auto Pairs
Plugin 'https://github.com/jiangmiao/auto-pairs.git'

" Better syntax highlighting
" Plugin 'https://github.com/justinmk/vim-syntax-extra.git'

" Easy commenting commands
Plugin 'https://github.com/tpope/vim-commentary.git'

" Ctrl-P fuzzy finder
"Plugin 'https://github.com/kien/ctrlp.vim.git'

" fzf Fuzzy Finder
Plugin 'https://github.com/junegunn/fzf.vim.git'

" Remember last line edited
Plugin 'https://github.com/farmergreg/vim-lastplace.git'

" Sleuth.vim for auto tab/space recognition
" Plugin 'https://github.com/tpope/vim-sleuth.git'

" Tagbar
Plugin 'https://github.com/majutsushi/tagbar.git'

" ++++++++++ THEMES +++++++++++
" Rusticated Theme
Plugin 'https://github.com/nightsense/rusticated.git'

" Snow
Plugin 'https://github.com/nightsense/snow.git'

" Oceanic Next Theme
Plugin 'https://github.com/mhartington/oceanic-next.git'

" Material Theme
Plugin 'https://github.com/kaicataldo/material.vim.git'

" Gruvbox Theme
Plugin 'https://github.com/morhetz/gruvbox.git'

" Solarized Theme
Plugin 'https://github.com/lifepillar/vim-solarized8.git'

" Hybrid Theme
Plugin 'https://github.com/w0ng/vim-hybrid.git'

" Night Owl Theme
Plugin 'https://github.com/haishanh/night-owl.vim.git'

" Nord Theme
Plugin 'https://github.com/arcticicestudio/nord-vim.git'

" One dark
Plugin 'https://github.com/rakr/vim-one.git'

" Paper Color
Plugin 'https://github.com/NLKNguyen/papercolor-theme.git'

" Ayu
Plugin 'https://github.com/ayu-theme/ayu-vim.git'

" Dracula
Plugin 'dracula/vim', { 'name': 'dracula'}

" Two-Firewatch
Plugin 'https://github.com/rakr/vim-two-firewatch.git'

" Sonokai
Plugin 'https://github.com/sainnhe/sonokai.git'

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

"==== Set up Leader key ====
let mapleader = "\<Space>"

" === CoC Needed Config ==========================================
" if hidden is not set, TextEdit might fail.
set hidden

" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Better display for messages
set cmdheight=2

" Popup window size
set pumheight=5

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" jump to definition
nnoremap <leader>cg :call CocAction('jumpDefinition')<CR>

" Show definition
nnoremap <leader>cd :call CocAction('showSignatureHelp')<CR>


"============================================================

"=== Airline Config ===
let g:airline#extensions#tabline#enabled = 1
let g:airline_section_c = '%{strftime("%m/%d/%y %H:%M")} %{getcwd()}'
let g:airline#extensions#whitespace#checks = []


" === Important, idk why ===
set t_md=

"==== numbering ====
set number
set relativenumber

"==== indent ====
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
" autocmd FileType asm setlocal shiftwidth=8 tabstop=8

"==== Weird Backspace Bug Fix ====
set backspace=indent,eol,start

"==== auto update changes in file and disable swap files ====
set autoread
set noswapfile

"==== Use Terminal Cursor ====
"set guicursor=

"==== Highlight current line ====
set cursorline

" === Highlight current line number ===
hi clear CursorLine
augroup CLClear
   autocmd! ColorScheme * hi clear CursorLine
augroup END

hi CursorLineNR cterm=bold
augroup CLNRSet
   autocmd! ColorScheme * hi CursorLineNR cterm=bold
augroup END

"==== set color config ====
syntax on
syntax enable


"==== Simple Leader Key Remaps ====
nmap <leader>s :noh<CR>
nmap <leader>w :w<CR>

" Move by screen lines rather than true lines
:noremap j gj
:noremap k gk

"==== Other key remaps ====
" Remap window change switching
nmap <silent> <A-k> :wincmd k<CR>
nmap <silent> <A-j> :wincmd j<CR>
nmap <silent> <A-h> :wincmd h<CR>
nmap <silent> <A-l> :wincmd l<CR>

:nnoremap <C-l> :bnext<CR>
:nnoremap <C-h> :bprevious<CR>
:nnoremap <leader>bd :bdelete<CR>

:nnoremap <leader>v :vsplit<CR>

"=== Open Scratch Window ===
nmap <silent> <leader>S :call nvim_create_buf(1,1)<CR>

"==== ctrl-p ====
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'

"==== Tagbar ====
nmap <leader>] :TagbarToggle<CR>

" === diff since last save ===
:nnoremap <leader>df :w !diff % -<CR>

" === hex mode ===
:nnoremap <leader>x :!hexdump -C % \| less<CR>

" === File Explore ===
:nnoremap <leader>e :Explore!<CR>

" === Echo Current File Name ===
nmap <leader>n :echo @%<CR>

" === Clipboard ===
set clipboard=unnamedplus

" === Whitespace ===
set listchars+=space:␣,tab:>-
nmap <leader>/ :set list!<CR>

" === Line Wrapping ===
set showbreak =>>

"==== Search ====
set smartcase

"==== Folds ====
set foldmethod=indent   
set foldnestmax=10
set nofoldenable
set foldlevel=2
set incsearch
set hlsearch

"==== Mouse Support ====
set mouse=a
"set ttymouse=sgr

"==== Misc ====
filetype plugin on
set encoding=utf8
set showcmd
set wildmenu

"==== Colorscheme Settings ====
"set termguicolors

"==== Colorscheme ====
set background=dark
colorscheme one

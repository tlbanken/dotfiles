"====================================
"  \    / (")   /\  /\   [][][] [][]                
"   \  /   |   /  \/  \  []  [] []          
"    \/    |  /        \ []     [][]       
"====================================


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


" Airline
" Plugin 'https://github.com/vim-airline/vim-airline.git'

" Auto Close {} w/ Auto Pairs
Plugin 'https://github.com/jiangmiao/auto-pairs.git'

" Better syntax highlighting
Plugin 'https://github.com/justinmk/vim-syntax-extra.git'

" Easy commenting commands
Plugin 'https://github.com/tpope/vim-commentary.git'

" Ctrl-P fuzzy finder
Plugin 'https://github.com/kien/ctrlp.vim.git'

" Remember last line edited
Plugin 'https://github.com/farmergreg/vim-lastplace.git'

" Git Gutter
" Plugin 'https://github.com/airblade/vim-gitgutter.git'

" Sleuth.vim for auto tab/space recognition
Plugin 'https://github.com/tpope/vim-sleuth.git'

" Tagbar
Plugin 'https://github.com/majutsushi/tagbar.git'

" ++++++++++ THEMES +++++++++++
" Rusticated Theme
Plugin 'https://github.com/nightsense/rusticated.git'

" Snow
Plugin 'https://github.com/nightsense/snow.git'

" Oceanic Next Theme
Plugin 'https://github.com/mhartington/oceanic-next.git'

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

" Airline
" let g:airline#extensions#tabline#enabled = 1

" === Important, idk why ===
set t_md=


"==== numbering ====
set number
set relativenumber

"==== indent ====
set smartindent
set tabstop=4
set shiftwidth=4
" autocmd FileType asm setlocal shiftwidth=8 tabstop=8

"==== Weird Backspace Bug Fix ====
set backspace=indent,eol,start

"==== auto update changes in file and disable swap files ====
set autoread
set noswapfile

"=== Auto set wrk dir to curr dir
set autochdir

"==== column marker ====
" set colorcolumn=80
" highlight ColorColumn guibg=black
"let &colorcolumn="80,".join(range(81,999),",")


"==== Highlight current line ====
" set cursorline

" === Highlight current line number ===
 " hi clear CursorLine
 " augroup CLClear
 "     autocmd! ColorScheme * hi clear CursorLine
 " augroup END

 " hi CursorLineNR cterm=bold
 " augroup CLNRSet
 "     autocmd! ColorScheme * hi CursorLineNR cterm=bold
 " augroup END

" ==== make bg transparent ====
 " au ColorScheme * hi Normal ctermbg=none guibg=none
 " au ColorScheme myspecialcolors hi Normal ctermbg=red guibg=red
 " hi! Normal ctermbg=NONE guibg=NONE
 " hi! NonText ctermbg=NONE guibg=NONE

"==== set color config ====
syntax on
syntax enable

"if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
"  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
"endif

if(has("termguicolors"))
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    set termguicolors
endif
if &term =~# '256color' && ( &term =~# '^screen'  || &term =~# '^tmux' )
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    set termguicolors
endif

"==== Set up Leader key ====
let mapleader = "\<Space>"


"==== Simple Leader Key Remaps ====
nmap <leader>s :noh<CR>
nmap <leader>w :w<CR>
nmap <leader>h 0
nmap <leader>l $
nmap <leader>= :set background=light<CR>
nmap <leader>- :set background=dark<CR>
nmap <leader>1 :colorscheme OceanicNext<CR>
nmap <leader>2 :colorscheme night-owl<CR>
nmap <leader>3 :colorscheme rusticated<CR>
nmap <leader>4 :colorscheme one<CR>
nmap <leader>5 :colorscheme hybrid<CR>
nmap <leader>6 :colorscheme gruvbox<CR>
nmap <leader>0 :syntax off<CR>
nmap <leader>) :syntax on<CR>
nmap <leader>j :m+<CR>
nmap <leader>k :m-2<CR>


" Move by screen lines rather than true lines
:noremap j gj
:noremap k gk


" ==== Fix Alt-key ====
if !has('nvim')
  let c='a'
  while c <= 'z'
    exec "set <A-".c.">=\e".c
    exec "imap \e".c." <A-".c.">"
    let c = nr2char(1+char2nr(c))
  endw

  set timeout ttimeoutlen=50
endif

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

" === Terminal ===
if has('terminal')
  :nnoremap <leader>t :bot ter ++rows=15<CR>
  tnoremap <F1> <C-W>N
endif

" === Auto hide Terminal ===
:nmap <C-j> :call QuickHide()<CR>
:tmap <C-j> <C-W>:call QuickHide()<CR>
let g:quick_hidden = 0
function! QuickHide()
  if g:quick_hidden
    unhide
    let g:quick_hidden = 0
    " switch to terminal window on opening
    execute g:quickhide_return_to_window . "wincmd w"
  else
    " remember terminal window
    let g:quickhide_return_to_window = winnr()
    hide
    let g:quick_hidden = 1
  endif
endfunction

" === Cursor Shape ===
" let &t_SI = "\<Esc>[6 q"
" let &t_SR = "\<Esc>[4 q"
" let &t_EI = "\<Esc>[2 q"

" === Whitespace ===
set listchars+=space:␣,tab:>-
nmap <leader>/ :set list!<CR>

"==== Status line ====
" set laststatus=2
set ruler

" === Line Wrapping ===
set showbreak =>>

"==== Search ====
set smartcase
set incsearch
set hlsearch

"==== Folds ====
set foldmethod=indent   
set foldnestmax=10
set nofoldenable
set foldlevel=2

"==== Basic Auto Complete ====
set complete=.,w,b,u,t,i
set showcmd

"==== Backup files to tmp ====
set backupdir-=.
set backupdir^=~/tmp,/tmp

"==== Mouse Support ====
set mouse=a
set ttymouse=sgr

"==== Misc ====
filetype plugin on
set encoding=utf8
set showcmd
set wildmenu

"==== Colorscheme Options ====
let g:dracula_italic = 0

"==== Colorscheme ====
set background=dark
colorscheme dracula


" ==== Use terminal colors ====
" hi! Normal ctermbg=NONE guibg=NONE
" hi! NonText ctermbg=NONE guibg=NONE
" hi! LineNr guibg=NONE ctermbg=NONE
" hi! SignColumn guibg=NONE ctermbg=NONE
" hi! NonText guibg=NONE ctermbg=NONE
" hi! EndOfBuffer guibg=NONE ctermbg=NONE

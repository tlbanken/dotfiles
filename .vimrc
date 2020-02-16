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

" Auto Completion with deoplete
"Plugin 'https://github.com/Shougo/deoplete.nvim.git'

" Airline
Plugin 'https://github.com/vim-airline/vim-airline.git'

" Auto Close {} w/ Auto Pairs
Plugin 'https://github.com/jiangmiao/auto-pairs.git'

" Better syntax highlighting
"Plugin 'https://github.com/sheerun/vim-polyglot.git'
Plugin 'https://github.com/justinmk/vim-syntax-extra.git'

" Easy commenting commands
Plugin 'https://github.com/tpope/vim-commentary.git'

" Ctrl-P fuzzy finder
Plugin 'https://github.com/kien/ctrlp.vim.git'

" Remember last line edited
Plugin 'https://github.com/farmergreg/vim-lastplace.git'

" Git Gutter
Plugin 'https://github.com/airblade/vim-gitgutter.git'

" Sleuth.vim for auto tab/space recognition
Plugin 'https://github.com/tpope/vim-sleuth.git'

" Tagbar
Plugin 'https://github.com/majutsushi/tagbar.git'

" ++++++++++ THEMES +++++++++++
" Palenight Theme
Plugin 'https://github.com/drewtempelmeyer/palenight.vim.git'

"Papercolor theme
Plugin 'https://github.com/NLKNguyen/papercolor-theme.git'

" Jellybeans theme
Plugin 'https://github.com/nanotech/jellybeans.vim.git'

" Material Theme
Plugin 'https://github.com/kaicataldo/material.vim.git'

" Summerfruit256
Plugin 'https://github.com/baeuml/summerfruit256.vim.git'

" Ayu-theme
Plugin 'https://github.com/ayu-theme/ayu-vim.git'

" Rusticated Theme
Plugin 'https://github.com/nightsense/rusticated.git'

" One Dark Theme
Plugin 'https://github.com/joshdick/onedark.vim.git'

" Snow
Plugin 'https://github.com/nightsense/snow.git'

" Half Light Theme
Plugin 'sonph/onehalf', {'rtp': 'vim/'}

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

" Pencil Theme
Plugin 'https://github.com/reedes/vim-colors-pencil.git'

" Vim-colors-plain
Plugin 'https://github.com/andreypopp/vim-colors-plain.git'

" Nord Theme
Plugin 'https://github.com/arcticicestudio/nord-vim.git'

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

"PaperColor Highlight
let g:PaperColor_Theme_Options = {
  \   'language': {
  \     'python': {
  \       'highlight_builtins' : 1
  \     },
  \     'cpp': {
  \       'highlight_standard_library': 1
  \     },
  \     'c': {
  \       'highlight_builtins' : 1
  \     }
  \   }
  \ }


"==== Pick Colorscheme Options ====
set background=dark
"colorscheme palenight
let g:palenight_terminal_italics=1
let g:jellybeans_use_term_italics = 1
let g:material_terminal_italics = 1
let g:oceanic_next_terminal_bold = 1
let g:oceanic_next_terminal_italic = 1
set t_md=


"==== numbering ====
set number
" set relativenumber

"==== indent ====
set smartindent
set tabstop=4
set shiftwidth=4
autocmd FileType asm setlocal shiftwidth=8 tabstop=8

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

"==== make bg transparent ====
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
	set termguicolors
endif


"==== Java Function highlighting ====
let java_highlight_functions = 1

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
nmap <leader>4 :colorscheme pencil<CR>
nmap <leader>5 :colorscheme hybrid<CR>
nmap <leader>6 :colorscheme ayu<CR>
nmap <leader>7 :colorscheme onedark<CR>
nmap <leader>8 :colorscheme gruvbox<CR>
nmap <leader>9 :colorscheme snow<CR>
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

" === Clipboard ===
set clipboard=unnamedplus

" === Terminal ===
if has('terminal')
  :nnoremap <leader>t :bot ter ++rows=15<CR>
  tnoremap <F1> <C-W>N
endif

" === Whitespace ===
:set listchars+=space:␣,tab:>-
nmap <leader>/ :set list!<CR>

"==== Status line ====
set laststatus=2

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

"==== Misc ====
filetype plugin on
set encoding=utf8
set showcmd
set wildmenu


"==== Airline Theme ====
" let g:airline_theme='onedark'
" let g:airline_theme='rusticated'
" let g:airline_theme='pencil'
let g:airline_theme='nord'

let g:jellybeans_overrides = {
\	'Function': {'guifg': '669cb0'}
\}

"==== Colorscheme ====
" let g:material_theme_style = 'dark'
set background=light
" let ayucolor="dark"
" let g:gruvbox_contrast_dark = 'hard'
colorscheme nord
" hi! Normal ctermbg=NONE guibg=NONE
" hi! NonText ctermbg=NONE guibg=NONE


"**** FUNCTIONS ****

"==== Toggle Transparent Background ====
" let t:is_transparent = 1
" function! Toggle_transparent()
"     if t:is_transparent == 0
"         hi Normal guibg=NONE ctermbg=NONE
"         let t:is_transparent = 1
"     else
"         set background=dark
"         let t:is_tranparent = 0
"     endif
" endfunction
" nnoremap <leader>t : call Toggle_transparent()<CR>

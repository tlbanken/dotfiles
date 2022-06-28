" General Settings


"==== set color config ====
syntax on
syntax enable


" === Important, idk why ===
set t_md=


"==== numbering ====
set number
" set relativenumber


"==== indent ====
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab


"==== Weird Backspace Bug Fix ====
set backspace=indent,eol,start


"==== auto update changes in file and disable swap files ====
set autoread
set noswapfile


"=== Auto set wrk dir to curr dir
set autochdir


" === Clipboard ===
if system('uname -s') == "Darwin\n"
  set clipboard=unnamed "OSX
else
  set clipboard=unnamedplus "Linux
endif


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
if !has('nvim')
    set ttymouse=xterm2
endif


"==== Misc ====
filetype plugin on
set encoding=utf8
set showcmd
set wildmenu

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


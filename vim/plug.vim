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
" Plugin 'https://github.com/justinmk/vim-syntax-extra.git'

" Easy commenting commands
Plugin 'https://github.com/tpope/vim-commentary.git'

" FZF
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

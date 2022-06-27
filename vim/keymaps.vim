" Key mapping

" Set up Leader key 
let mapleader = "\<Space>"


" Searching
nmap <leader>s :noh<CR>


" === File management ===
" Save
nmap <leader>w :w<CR>

" diff since last save
:nnoremap <leader>df :w !diff % -<CR>

" File Explore
:nnoremap <leader>e :Explore!<CR>

" Echo Current File Name
nmap <leader>n :echo @%<CR>

" Move by screen lines rather than true lines
:noremap j gj
:noremap k gk


" === Window Management ===
" Remap window change switching
nmap <silent> <A-k> :wincmd k<CR>
nmap <silent> <A-j> :wincmd j<CR>
nmap <silent> <A-h> :wincmd h<CR>
nmap <silent> <A-l> :wincmd l<CR>

" Buffer movement
:nnoremap <C-l> :bnext<CR>
:nnoremap <C-h> :bprevious<CR>
:nnoremap <leader>bd :bdelete<CR>

" Split
:nnoremap <leader>v :vsplit<CR>


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

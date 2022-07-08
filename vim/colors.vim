"==== Colorscheme ====
set background=dark
colorscheme one
" syntax off


" ==== Use terminal colors ====
hi! Normal ctermbg=NONE guibg=NONE
hi! NonText ctermbg=NONE guibg=NONE
hi! LineNr guibg=NONE ctermbg=NONE
hi! SignColumn guibg=NONE ctermbg=NONE
hi! NonText guibg=NONE ctermbg=NONE
hi! EndOfBuffer guibg=NONE ctermbg=NONE

" change popup window colors
highlight Pmenu ctermbg=gray guibg=gray
highlight PmenuSel ctermbg=lightgray guibg=lightgray
highlight PmenuSbar ctermbg=255 guibg=255
highlight PmenuThumb ctermbg=255 guibg=255


"if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
"  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
"endif

" if(has("termguicolors"))
"     let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
"     let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
"     set termguicolors
" endif
" if &term =~# '256color' && ( &term =~# '^screen'  || &term =~# '^tmux' )
"     let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
"     let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
"     set termguicolors
" endif

"==== column marker ====
" set colorcolumn=80
" highlight ColorColumn guibg=black
"let &colorcolumn="80,".join(range(81,999),",")


"==== Highlight current line ====
" set cursorline

" === Highlight current line number ===
" hi clear CursorLine
" augroup CLClear
"    autocmd! ColorScheme * hi clear CursorLine
" augroup END

" hi CursorLineNR cterm=bold
" augroup CLNRSet
"    autocmd! ColorScheme * hi CursorLineNR cterm=bold
" augroup END

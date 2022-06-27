" Plugin Specifc Settings

"=== Goyo Settings ===
let g:goyo_linenr="1"
let g:goyo_height="95%"

" === Start Goyo ===
let g:toggle_goyo_off = 1
function! ToggleGoyo()
  if g:toggle_goyo_off
    Goyo
    let g:toggle_goyo_off = 0
  else
    Goyo!
    let g:toggle_goyo_off = 1
  endif
endfunction
nmap <leader>gy :call ToggleGoyo()<CR>


if exists('g:included_coc_nvim')
  finish
endif
let g:included_coc_nvim = 1

" Highlight the symbol and its references every 'updatetime's
autocmd CursorHold * silent call CocActionAsync('highlight')

" Map <c-[hjkl]> to navigate the completion menu
inoremap <silent><expr> <c-h> pumvisible() ? "<esc>" : ""  " Cancel completion
inoremap <silent><expr> <c-j> pumvisible() ? "<down>" : "" " Next candidate
inoremap <silent><expr> <c-k> pumvisible() ? "<up>" : ""   " Previous candidate
inoremap <silent><expr> <c-l> pumvisible() ? "<cr>" : ""   " Complete

" Map <c-r> to trigger completion
inoremap <silent><expr> <c-r> coc#refresh()

" Show command documentation or do hover
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'help '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction
nnoremap <silent> K :call <sid>show_documentation()<cr>| " Show documentation
vmap <silent> <leader>f <plug>(coc-format-selected)|     " Format selected
nmap <silent> <leader>f <plug>(coc-format)|              " Format buffer
nmap <silent> <leader>gd <plug>(coc-definition)|         " Go to definition
nmap <silent> <leader>gr <plug>(coc-references)|         " Go to references
nmap <silent> <leader>rn <plug>(coc-rename)|             " Rename symbol

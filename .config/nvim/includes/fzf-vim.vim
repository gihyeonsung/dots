if exists('g:included_fzf_vim')
  finish
endif
let g:included_fzf_vim = 1

" Show fzf with file preview
command! -bang -nargs=? -complete=dir Files
    \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)

nnoremap <leader>ff :Files<cr>
nnoremap <leader>fl :BLines<cr>
nnoremap <leader>fr :Rg<cr>

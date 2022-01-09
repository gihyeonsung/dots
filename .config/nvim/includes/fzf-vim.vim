if exists('g:included_fzf_vim')
  finish
endif
let g:included_fzf_vim = 1

nnoremap <leader>ff :Files<cr>
nnoremap <leader>fl :BLines<cr>
nnoremap <leader>fr :Rg<cr>

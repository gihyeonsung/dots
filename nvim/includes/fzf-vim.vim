if exists('g:included_fzf_vim')
  finish
endif
let g:included_fzf_vim = 1

inoremap <c-f> <esc>:BLines<cr>
nnoremap <c-f> :Files<cr>

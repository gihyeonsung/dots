if exists('g:included_c')
  finish
endif
let g:included_c = 1

augroup c
  autocmd FileType c setlocal noexpandtab
  autocmd FileType c setlocal tabstop=8
  autocmd BufEnter *.h setlocal filetype=c
augroup end

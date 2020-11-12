if exists('g:included_go')
  finish
endif
let g:included_go = 1

augroup go
  autocmd FileType go setlocal noexpandtab
  autocmd FileType go setlocal tabstop=4
augroup end

if exists('g:included_sh')
  finish
endif
let g:included_sh = 1

augroup sh
  autocmd FileType sh setlocal noexpandtab
  autocmd FileType sh setlocal tabstop=8
augroup end

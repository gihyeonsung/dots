if exists('g:include_indent')
  finish
endif
let g:included_indent = 1

augroup fsharp
  autocmd FileType fsharp setlocal tabstop=2
  "autocmd FileType fsharp setlocal tabstop=4 " for pet projects
augroup end

augroup go
  autocmd FileType go setlocal noexpandtab
  autocmd FileType go setlocal tabstop=4
augroup end

augroup sh
  autocmd FileType sh,zsh setlocal noexpandtab
  autocmd FileType sh,zsh setlocal tabstop=8
augroup end

augroup c
  autocmd FileType c setlocal noexpandtab
  autocmd FileType c setlocal tabstop=8
  autocmd BufEnter *.h setlocal filetype=c
augroup end

augroup arduino
  autocmd FileType arduino setlocal noexpandtab
  autocmd FileType arduino setlocal tabstop=8
augroup end

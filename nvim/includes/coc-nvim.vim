if exists('g:included_cocnvim')
    finish
endif
let g:included_cocnvim = 1

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

autocmd CursorHold * silent call CocActionAsync('highlight')

inoremap <silent><expr> <c-h> pumvisible() ? "<esc>" : "<nop>"
inoremap <silent><expr> <c-j> pumvisible() ? "<down>" : "<nop>"
inoremap <silent><expr> <c-k> pumvisible() ? "<up>" : "<nop>"
inoremap <silent><expr> <c-l> pumvisible() ? "<cr>" : "<nop>"
inoremap <silent><expr> <c-r> coc#refresh()

nmap <silent>gd <Plug>(coc-definition)
nmap <silent>gc <Plug>(coc-declaration)
nmap <silent>gt <Plug>(coc-type-definition)
nmap <silent>gi <Plug>(coc-implementation)
nmap <silent>gr <Plug>(coc-references)

nmap <leader>rn <Plug>(coc-rename)

nmap <silent><leader>f <Plug>(coc-format)
vmap <silent><leader>f <Plug>(coc-format-selected)

nnoremap <silent><c-d> :call <SID>show_documentation()<CR>

xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)

augroup golang
  autocmd!
  autocmd BufWritePre *.go :call CocAction('runCommand', 'editor.action.organizeImport')
  autocmd FileType go set noexpandtab
  autocmd FileType go set shiftwidth=4
  autocmd FileType go set softtabstop=4
  autocmd FileType go set tabstop=4
augroup end

augroup makefile
  autocmd!
  autocmd FileType make set shiftwidth=8
  autocmd FileType make set softtabstop=8
  autocmd FileType make set tabstop=8
  autocmd FileType make set noexpandtab
augroup end

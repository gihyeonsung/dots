if exists('g:included_vim_lsp')
  finish
endif
let g:included_vim_lsp = 1

" let g:lsp_log_verbose = 1
" let g:lsp_log_file = stdpath('cache') . 'vim-lsp.log'
" let g:asyncomplete_log_file = stdpath('cache') . 'asyncomplete.log'
let g:lsp_format_sync_timeout = 1000

function! s:setup_vimlsp() abort
  nmap K <plug>(lsp-hover)
  nmap <leader>gd <plug>(lsp-definition)
  nmap <leader>gr <plug>(lsp-references)
  nmap <leader>rn <plug>(lsp-rename)
  imap <c-space> <Plug>(asyncomplete_force_refresh)

  autocmd! BufWritePre *.js,*.rs,*.go,*.py,*.cc,*.hs call execute('LspDocumentFormatSync')
endfunction

augroup setup_vimlsp_invoke
  autocmd! User lsp_buffer_enabled call s:setup_vimlsp()
augroup end

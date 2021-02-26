if exists('g:included_vim_lsp')
  finish
endif
let g:included_vim_lsp = 1

function! s:setup_vimlsp_mapping() abort
    nmap K <plug>(lsp-hover)
    nmap <leader>rn <plug>(lsp-rename)
    nmap <leader>gd <plug>(lsp-definition)
    nmap <leader>gs <plug>(lsp-document-symbol-search)
    nmap <leader>gS <plug>(lsp-workspace-symbol-search)
    nmap <leader>gr <plug>(lsp-references)
    nmap <leader>gi <plug>(lsp-implementation)
    nmap <leader>gt <plug>(lsp-type-definition)
endfunction

augroup vim_lsp
    autocmd User lsp_buffer_enabled call s:setup_vimlsp_mapping()
augroup end

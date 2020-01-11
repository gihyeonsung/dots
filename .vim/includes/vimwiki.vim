if exists('g:included_vimwiki')
    finish
endif
let g:included_vimwiki = 1

let g:vimwiki_list = [{'path': '~/repositories/chu-tty.github.io/_notes',  
    \ 'syntax': 'markdown',
    \ 'ext': '.md',
    \ 'auto_toc': 1,
    \ 'index': 'root',}]


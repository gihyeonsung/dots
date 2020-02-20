if exists('g:included_vimwiki')
    finish
endif
let g:included_vimwiki = 1

let g:vimwiki_list = [{'path': '~/repositories/chu-tty.github.io/_notes',  
    \ 'syntax': 'markdown',
    \ 'ext': '.md',
    \ 'auto_toc': 1,
    \ 'index': 'root',}]

function! UpdateMetadata()
  let savedCursor = getpos('.')
  let updatedDatetime = strftime('%Y-%m-%d %H:%M:%S +0900')
  execute '%s/^updated\s*:\s\+.*$/updated  : ' . updatedDatetime . '/ge'
  call setpos('.', savedCursor)
endfun

function! CreateMetadata()
  let createdDatetime = strftime('%Y-%m-%d %H:%M:%S +0900')
  call append(line('^'), [ '---'
                       \ , 'layout   : note'
                       \ , 'title    : '
                       \ , 'date     : ' . createdDatetime
                       \ , 'updated  : ' . createdDatetime
                       \ , 'category : '
                       \ , 'tags     : '
                       \ , '---'])
endfun

augroup vimwikimarkdown
  autocmd BufWrite   *.md call UpdateMetadata()
  autocmd BufNewFile *.md call CreateMetadata()
augroup end

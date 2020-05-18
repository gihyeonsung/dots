if exists('g:included_vimwiki')
  finish
endif
let g:included_vimwiki = 1

let g:vimwiki_list =
  \ [ {'path': '~/repos/gihyeonsung.github.io/_notes/', 'ext': '.md', 'syntax': 'markdown'}
  \ , {'path': '~/docs/', 'ext': '.md', 'syntax': 'markdown'}]

function UpdateMetadata()
  let cursor = getpos('.')
  let updatedDatetime = strftime('%Y-%m-%d %H:%M:%S +0900')
  execute '%s/^updated\s*:\s\+.*$/updated : ' . updatedDatetime . '/ge'
  call setpos('.', cursor)
endfunction

function CreateMetadata()
  let createdDatetime = strftime('%Y-%m-%d %H:%M:%S +0900')
  call append(line('^'), [ '---'
                       \ , 'layout  : note'
                       \ , 'title   : '
                       \ , 'date    : ' . createdDatetime
                       \ , 'updated : ' . createdDatetime
                       \ , 'category: '
                       \ , 'tags    : '
                       \ , '---'])
endfunction

augroup vimwikimarkdown
  autocmd BufWrite   *.md call UpdateMetadata()
  autocmd BufNewFile *.md call CreateMetadata()
augroup end

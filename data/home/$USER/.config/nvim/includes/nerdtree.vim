if exists('g:included_nerdtree')
  finish
endif
let g:included_nerdtree = 1

let NERDTreeBookmarksFile = stdpath("data") . "NERDTreeBookmarks"
let NERDTreeDirArrowCollapsible = ""
let NERDTreeDirArrowExpandable = ""
let NERDTreeShowHidden = 1

nnoremap <silent> <c-e> :NERDTreeToggle<cr>

if exists('g:included_nerdtree')
  finish
endif
let g:included_nerdtree = 1

let NERDTreeDirArrowCollapsible = ""
let NERDTreeDirArrowExpandable = ""
let NERDTreeHighlightCursorline = 0
let NERDTreeMinimalMenu = 1
let NERDTreeMinimalUI = 1
let NERDTreeShowHidden = 1

nnoremap <c-n> :NERDTreeToggle<cr>

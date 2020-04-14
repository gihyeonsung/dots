if exists('g:included_nerdtree')
    finish
endif
let g:included_nerdtree = 1

let NERDTreeAutoDeleteBuffer = 1
let NERDTreeDirArrowCollapsible = ""
let NERDTreeDirArrowExpandable = ""
let NERDTreeHighlightCursorline = 0
let NERDTreeMinimalMenu = 1
let NERDTreeMinimalUI = 1
let NERDTreeQuitOnOpen = 0
let NERDTreeShowHidden = 1
let NERDTreeStatusline = "tree"

nnoremap <c-n> :NERDTreeToggle<cr>

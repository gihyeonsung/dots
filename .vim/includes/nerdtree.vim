if exists('g:included_nerdtree')
    finish
endif
let g:included_nerdtree = 1

let NERDTreeAutoDeleteBuffer = 1
let NERDTreeDirArrowCollapsible = "-"
let NERDTreeDirArrowExpandable = "+"
let NERDTreeMinimalMenu = 1
let NERDTreeMinimalUI = 1
let NERDTreeQuitOnOpen = 0
let NERDTreeShowHidden = 1
let NERDTreeWinSize = 32

nnoremap <F12> :NERDTreeToggle<CR>


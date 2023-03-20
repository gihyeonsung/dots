vim.cmd([[
call plug#begin()
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'morhetz/gruvbox'
Plug 'mhinz/vim-signify'
Plug 'sheerun/vim-polyglot'
Plug 'neovim/nvim-lspconfig'
call plug#end()

colorscheme gruvbox
set colorcolumn=80
set expandtab
set ignorecase
set list
set listchars=tab:>\ ,trail:\.
set noswapfile
set incsearch
set nowritebackup
set number
set shiftwidth=0
set showmatch
set smartcase
set tabstop=2
set termguicolors

let NERDTreeBookmarksFile = stdpath("data") . "NERDTreeBookmarks"
let NERDTreeDirArrowCollapsible = ""
let NERDTreeDirArrowExpandable = ""
let NERDTreeShowHidden = 1
nnoremap <silent> <leader>e :NERDTreeToggle<cr>

nnoremap <leader>ff :Files<cr>
nnoremap <leader>fr :Rg<cr>

let g:signify_sign_add = '+'
let g:signify_sign_change = '*'
let g:signify_sign_delete = '-'
let g:signify_sign_delete_first_line = '-'
let g:signify_sign_show_count = 0
]])

local nvim_lsp = require('lspconfig')
nvim_lsp.tsserver.setup {}

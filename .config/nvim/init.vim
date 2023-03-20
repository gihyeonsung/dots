" VIM-PLUG PLUGINS
call plug#begin()

" file browser
Plug 'scrooloose/nerdtree'

" fuzzy finder
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

" color
Plug 'morhetz/gruvbox'
Plug 'mhinz/vim-signify'
Plug 'sheerun/vim-polyglot'

call plug#end()

" NEOVIM SETTINGS
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

augroup fsharp
  autocmd FileType fsharp setlocal tabstop=2
  "autocmd FileType fsharp setlocal tabstop=4 " for pet projects
augroup end

augroup go
  autocmd FileType go setlocal noexpandtab
  autocmd FileType go setlocal tabstop=4
augroup end

augroup sh
  autocmd FileType sh,zsh setlocal noexpandtab
  autocmd FileType sh,zsh setlocal tabstop=8
augroup end

augroup c
  autocmd FileType c setlocal noexpandtab
  autocmd FileType c setlocal tabstop=8
  autocmd BufEnter *.h setlocal filetype=c
augroup end

augroup arduino
  autocmd FileType arduino setlocal noexpandtab
  autocmd FileType arduino setlocal tabstop=8
augroup end

" NERDTREE
let NERDTreeBookmarksFile = stdpath("data") . "NERDTreeBookmarks"
let NERDTreeDirArrowCollapsible = ""
let NERDTreeDirArrowExpandable = ""
let NERDTreeShowHidden = 1
nnoremap <silent> <leader>e :NERDTreeToggle<cr>

" FZF.VIM
nnoremap <leader>ff :Files<cr>
nnoremap <leader>fr :Rg<cr>

" VIM-SIGNIFY
let g:signify_sign_add = '+'
let g:signify_sign_change = '*'
let g:signify_sign_delete = '-'
let g:signify_sign_delete_first_line = '-'
let g:signify_sign_show_count = 0


call plug#begin('~/.vim/plugged')
Plug 'bling/vim-airline'
Plug 'enricobacis/vim-airline-clock'
Plug 'koirand/tokyo-metro.vim'
Plug 'mhinz/vim-signify'
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'scrooloose/nerdtree'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-fugitive'
Plug 'vimwiki/vimwiki'
call plug#end()

set autoindent
set cindent
set encoding=utf-8
set expandtab
set history=10000
set hlsearch
set ignorecase
set lazyredraw
set list
set listchars=tab:»\ ,trail:·
set matchpairs+=<:>
set noruler
set noshowcmd
set noshowmode
set nrformats=alpha,octal,hex,bin
set number
set scroll=5
set shiftwidth=2
set showbreak=\ ↪\
set showmatch
set signcolumn=yes:1
set smartcase
set smartindent
set smarttab
set softtabstop=2
set tabstop=2
set updatetime=100

colorscheme tokyo-metro
highlight EndOfBuffer ctermbg=bg ctermfg=bg guibg=bg guifg=bg
highlight VertSplit   ctermbg=bg ctermfg=bg guibg=bg guifg=bg
highlight SignColumn  ctermbg=bg ctermfg=bg guibg=bg guifg=bg
highlight LineNr      ctermbg=bg            guibg=bg

runtime! includes/*.vim

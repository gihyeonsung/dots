call plug#begin('~/.vim/plugged')
Plug 'airblade/vim-gitgutter'
Plug 'bling/vim-airline'
Plug 'enricobacis/vim-airline-clock'
Plug 'koirand/tokyo-metro.vim'
Plug 'mhinz/vim-startify'
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'scrooloose/nerdtree'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-fugitive'
Plug 'vimwiki/vimwiki'
call plug#end()

set autoindent
set cindent
set colorcolumn=80
set cursorline
set encoding=utf-8
set expandtab
set history=10000
set hlsearch
set ignorecase
set lazyredraw
set list
set listchars=tab:»\ ,trail:·
set matchpairs+=<:>
set nrformats=alpha,octal,hex,bin
set number
set numberwidth=4
set ruler
set scroll=5
set shiftwidth=2
set showbreak=\ ↪\
set showcmd
set showmatch
set showmode
set showtabline=2
set signcolumn=yes
set signcolumn=yes
set smartcase
set smartindent
set smarttab
set softtabstop=2
set tabstop=2
set title
set updatetime=250

colorscheme tokyo-metro

runtime! includes/*.vim

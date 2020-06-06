call plug#begin(stdpath('data') . '/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " Dependency of fzf.vim
Plug 'junegunn/fzf.vim'                             " Fuzzy finder
Plug 'lifepillar/vim-solarized8'                    " Solarized colorscheme
Plug 'mhinz/vim-signify'                            " Sign column git diff
Plug 'neoclide/coc.nvim', {'branch': 'release'}     " LSP client
Plug 'scrooloose/nerdtree'                          " Tree explorer
Plug 'sheerun/vim-polyglot'                         " Language pack
Plug 'vimwiki/vimwiki'                              " Vimwiki
call plug#end()
set background=light           " Use light colors
set colorcolumn=80             " Display a vertical line at 80 columns
set expandtab                  " Replace tabs with spaces
set ignorecase                 " Ignore cases for search regexs
set list                       " Display tabs ans trailing spaces
set listchars=tab:>\ ,trail:\. " Set characters for 'list'
set noswapfile                 " Disable swap
set nowritebackup              " Disable backup
set nrformats+=alpha,octal     " Enable <c-a> and <c-x> for alphabet and octal
set number                     " Display line numbers
set relativenumber             " Relatively display line numbers
set shiftwidth=0               " Use the same width with 'tabstop'
set showmatch                  " Highlight matching parentheses
set smartcase                  " Override 'ignorecase' with any uppercases
set tabstop=2                  " Set the width of a tab to 2 spaces
set termguicolors              " Enable 8-bit colors
set updatetime=100             " Set updatetime to 100ms for coc.nvim
colorscheme solarized8_flat    " Use solarized color scheme
runtime! includes/*.vim        " Source all scripts in 'includes' directory

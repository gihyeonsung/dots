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

local lsp = require('lspconfig')
lsp.lua_ls.setup {}
lsp.tsserver.setup {}
lsp.pyright.setup {}

vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(ev)
    -- Enable completion triggered by <c-x><c-o>
    vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

    -- Buffer local mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    local opts = { buffer = ev.buf }
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
    vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', '<leader>gr', vim.lsp.buf.references, opts)
    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
    vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, opts)
    vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
    vim.keymap.set('n', '<leader>fm', function()
      vim.lsp.buf.format { async = true }
    end, opts)
  end,
})

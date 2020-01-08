filetype plugin on

call plug#begin('~/.vim/plugged')
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
Plug 'ionide/Ionide-vim', {
      \ 'do':  'make fsautocomplete',
      \}
Plug 'Shougo/deoplete.nvim'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'scrooloose/nerdtree'
Plug 'bling/vim-airline'
Plug 'enricobacis/vim-airline-clock'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'koirand/tokyo-metro.vim'
Plug 'godlygeek/tabular'
Plug 'vimwiki/vimwiki', {
    \ 'branch': 'dev',
    \ }
Plug 'mhinz/vim-startify'
call plug#end()

let NERDTreeShowHidden = 1
let g:LanguageClient_serverCommands = {
    \ 'rust': ['rustup', 'run', 'stable', 'rls'],
    \ 'fsharp': ['dotnet', '/home/gihyeon/.vim/plugged/Ionide-vim/fsac/fsautocomplete.dll'],
    \ }
let g:LanguageClient_loggingFile =  expand('~/.vim/LanguageClient.log')
let g:LanguageClient_serverStderr = expand('~/.vim/LanguageServer.log')
let g:airline#extensions#clock#updatetime = 1000
let g:airline#extensions#clock#format = '%Y-%m-%d %H:%M:%S +0900'
let g:deoplete#enable_at_startup = 1
let g:vimwiki_list = [{'path': '~/repositories/chu-tty.github.io/_notes',
    \ 'syntax': 'markdown',
    \ 'ext': '.md',
    \ 'auto_toc': 1,
    \ 'index': 'root',}]
let g:startify_custom_header = [
    \ '============================',
    \ '    Welcome back Gihyeon',
    \ '============================',
    \ ]
let g:startify_lists = [
    \ { 'type': 'bookmarks' , 'header': ['Bookmarks']      },
    \ { 'type': 'sessions'  , 'header': ['Saved sessions'] },
    \ { 'type': 'files'     , 'header': ['Recent files']   },
    \ ]
let g:startify_files_number = 3
let g:startify_bookmarks = [
    \ { '0': '~/repositories/chu-tty.github.io' }
    \ ]
let g:startify_session_before_save = [
    \ 'echo "Cleaning up before saving.."',
    \ 'silent! NERDTreeTabsClose',
    \ ]
 
colorscheme tokyo-metro

nnoremap <leader>ld :call LanguageClient#textDocument_definition()<CR>
nnoremap <F2> :call LanguageClient#textDocument_rename()<CR>
nnoremap <leader>lf :call LanguageClient#textDocument_formatting()<CR>
nnoremap <leader>lt :call LanguageClient#textDocument_typeDefinition()<CR>
nnoremap <leader>lx :call LanguageClient#textDocument_references()<CR>
nnoremap <leader>la :call LanguageClient_workspace_applyEdit()<CR>
nnoremap <leader>lc :call LanguageClient#textDocument_completion()<CR>
nnoremap <leader>lh :call LanguageClient#textDocument_hover()<CR>
nnoremap <leader>ls :call LanguageClient_textDocument_documentSymbol()<CR>
nnoremap <F5> :call LanguageClient_contextMenu()<CR>
nnoremap <F12> :NERDTreeToggle<CR>

set autoindent                    " 새 줄이 이전 줄 인덴트 물려 받음
set cindent                       " C 스타일 인덴트 사용
set colorcolumn=80
set cursorline
set encoding=utf-8                " utf-8 인코딩 사용
set expandtab                     " 탭 문자를 공백 문자로 입력
set history=10000
set hlsearch                      " 검색 하이라이팅
set ignorecase                    " 검색 대소문자 무시
set lazyredraw                    " 매크로, 스크립트 실행 완전 완료 후 랜더링
set list
set listchars=tab:»\ ,trail:·
set matchpairs+=<:>
set nocompatible
set nrformats=alpha,octal,hex,bin " 숫자로 인식하는 포맷을 설정
set number                        " 줄 표시
set numberwidth=4                 " 줄 숫자 표시 길이
set ruler                         " 커서 위치 정보 표시
set scroll=5                      " <C-u> <C-d>로 스크롤하는 줄의 크기
set shiftwidth=4                  " 4글자 만큼 쉬프트
set showbreak=\ ↪\                " 강제 줄바꿈 표시
set showcmd                       " 입력 NORMAL 명령어 표시
set showmatch                     " 짝이 맞는 괄호를 표시
set showmode
set showtabline=2                 " 탭 상단에 항상 표시
set signcolumn=yes
set signcolumn=yes
set smartcase                     " 검색에 대문자 포함하면 대소문자 구분 적용
set smartindent                   " 언어에 맞게 인덴트 사용
set smarttab                      " 탭 문자가 입력되면, tabstop만큼 공백 입력
set softtabstop=4
set tabstop=4                     " 인덴트 문자를 4글자로 설정
set title


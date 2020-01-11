filetype plugin indent on

call plug#begin('~/.vim/plugged')
Plug 'Shougo/deoplete.nvim'
Plug 'airblade/vim-gitgutter'
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
Plug 'bling/vim-airline'
Plug 'dense-analysis/ale'
Plug 'enricobacis/vim-airline-clock'
Plug 'godlygeek/tabular'
Plug 'ionide/Ionide-vim', {
    \ 'do':  'make fsautocomplete',
    \}
Plug 'koirand/tokyo-metro.vim'
Plug 'mhinz/vim-startify'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'vimwiki/vimwiki', {
    \ 'branch': 'dev',
    \ }
call plug#end()

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

colorscheme tokyo-metro

runtime! includes/*.vim


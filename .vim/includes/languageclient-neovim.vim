if exists('g:included_languageclient_neovim')
    finish
endif
let g:included_languageclient_neovim = 1

let g:LanguageClient_serverCommands = {
    \ 'rust': ['rustup', 'run', 'stable', 'rls'],
    \ 'fsharp': ['dotnet', '/home/gihyeon/.vim/plugged/Ionide-vim/fsac/fsautocomplete.dll'],
    \ 'haskell': ['hie-wrapper', '--lsp'],
    \ 'ruby': ['solargraph', 'stdio'],
    \ }
let g:LanguageClient_loggingFile =  expand('~/.vim/LanguageClient.log')
let g:LanguageClient_serverStderr = expand('~/.vim/LanguageServer.log')
let g:LanguageClient_settingsPath = '~/.haskell-ide-engine.json'

augroup haskell
    autocmd FileType haskell nnoremap <silent> <F2>       :call LanguageClient#textDocument_rename()<CR>
    autocmd FileType haskell nnoremap <silent> <F5>       :call LanguageClient_contextMenu()<CR>
    autocmd FileType haskell nnoremap <silent> <Leader>ld :call LanguageClient#textDocument_definition()<CR>
    autocmd FileType haskell nnoremap <silent> <Leader>lf :call LanguageClient#textDocument_formatting()<CR>
    autocmd FileType haskell nnoremap <silent> <Leader>lh :call LanguageClient#textDocument_hover()<CR>
    autocmd FileType haskell nnoremap <silent> <Leader>ls :call LanguageClient#textDocument_documentSymbol()<CR>
    autocmd FileType haskell nnoremap <silent> <Leader>lx :call LanguageClient#textDocument_references()<CR>
augroup END

augroup fsharp
    autocmd FileType fsharp nnoremap <silent> <F2>       :call LanguageClient#textDocument_rename()<CR>
    autocmd FileType fsharp nnoremap <silent> <F5>       :call LanguageClient_contextMenu()<CR>
    autocmd FileType fsharp nnoremap <silent> <Leader>la :call LanguageClient_workspace_applyEdit()<CR>
    autocmd FileType fsharp nnoremap <silent> <Leader>lc :call LanguageClient#textDocument_completion()<CR>
    autocmd FileType fsharp nnoremap <silent> <Leader>ld :call LanguageClient#textDocument_definition()<CR>
    autocmd FileType fsharp nnoremap <silent> <Leader>lf :call LanguageClient#textDocument_formatting()<CR>
    autocmd FileType fsharp nnoremap <silent> <Leader>lh :call LanguageClient#textDocument_hover()<CR>
    autocmd FileType fsharp nnoremap <silent> <Leader>ls :call LanguageClient_textDocument_documentSymbol()<CR>
    autocmd FileType fsharp nnoremap <silent> <Leader>lt :call LanguageClient#textDocument_typeDefinition()<CR>
    autocmd FileType fsharp nnoremap <silent> <Leader>lx :call LanguageClient#textDocument_references()<CR>
augroup END

augroup ruby
    autocmd FileType ruby nnoremap <silent> <F2>       :call LanguageClient#textDocument_rename()<CR>
    autocmd FileType ruby nnoremap <silent> <F5>       :call LanguageClient_contextMenu()<CR>
    autocmd FileType ruby nnoremap <silent> <Leader>ld :call LanguageClient#textDocument_definition()<CR>
    autocmd FileType ruby nnoremap <silent> <Leader>lf :call LanguageClient#textDocument_formatting()<CR>
    autocmd FileType ruby nnoremap <silent> <Leader>lh :call LanguageClient#textDocument_hover()<CR>
    autocmd FileType ruby nnoremap <silent> <Leader>ls :call LanguageClient_textDocument_documentSymbol()<CR>
    autocmd FileType ruby nnoremap <silent> <Leader>lt :call LanguageClient#textDocument_typeDefinition()<CR>
    autocmd FileType ruby nnoremap <silent> <Leader>lx :call LanguageClient#textDocument_references()<CR>
augroup END


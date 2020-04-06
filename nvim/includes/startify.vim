if exists('g:included_startify')
    finish
endif
let g:included_startify = 1

let g:startify_custom_header = [
    \ '============================',
    \ '    Welcome back Gihyeon',
    \ '============================',
    \ ]
let g:startify_lists = [
    \ { 'type': 'sessions'  , 'header': ['Saved sessions'] },
    \ { 'type': 'files'     , 'header': ['Recent files']   },
    \ ]
let g:startify_files_number = 3
let g:startify_session_before_save = [
    \ 'echo "Cleaning up before saving.."',
    \ 'silent! NERDTreeTabsClose',
    \ ]
 

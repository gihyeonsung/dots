if exists('g:included_vim_airline_clock')
    finish
endif
let g:included_vim_airline_clock = 1

let g:airline#extensions#clock#updatetime = 1000
let g:airline#extensions#clock#format = '%Y-%m-%d %H:%M:%S +0900'


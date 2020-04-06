if exists('g:included_vim_signify')
    finish
endif
let g:included_vim_signify = 1

let g:signify_sign_add = '+'
let g:signify_sign_change = '*'
let g:signify_sign_delete = '-'
let g:signify_sign_delete_first_line = '-'
let g:signify_sign_show_count = 0

highlight SignifySignAdd    ctermfg=41  guifg=#56b88a
highlight SignifySignDelete ctermfg=196 guifg=#e24240
highlight SignifySignChange ctermfg=137 guifg=#f19a36

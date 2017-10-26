set background=dark

" Type jk to get back into normal mode from insert mode
inoremap jk <ESC>

call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'
Plug 'scrooloose/syntastic'
call plug#end()

" Eslinting stuff from this blogpost:
" https://medium.com/@hpux/vim-and-eslint-16fa08cc580f
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exe = 'npm run lint --'

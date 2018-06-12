set background=dark

" Type jk to get back into normal mode from insert mode
inoremap jk <ESC>

call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'
Plug 'w0rp/ale'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

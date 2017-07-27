colorscheme zellner
syntax on

inoremap jk <ESC>
let mapleader = ","

" Surround with quotes
nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel
nnoremap <leader>' viw<esc>a'<esc>bi'<esc>lel

" Surround visual selection with quotes
vnoremap <leader>s" <esc>`<i"<esc>`>i"<esc>
vnoremap <leader>s' <esc>`<i'<esc>`>i'<esc>

" Move line down
nnoremap - dd p 

" Set line numbers
set number

" Move line up
nnoremap _ ddkkp

set display =lastline
set tabstop=2 shiftwidth=2 expandtab
set wildmode=full

" Move between windows
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Plugins
call plug#begin('~/.vim/autoload')
Plug 'scrooloose/syntastic'
call plug#end()

" Auto-install any new plugins
autocmd VimEnter *
	\ if !empty(filter(copy(g:plugs), '!isdirectory(v:val.dir)'))
	\|   PlugInstall | q
	\| endif

" Syntastic
let g:syntastic_javascript_checkers=['eslint']
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_solarized_bg='dark'

" Put swap files in their place
set dir=~/tmp

colorscheme zellner
set background=dark "Text is unreadable without this
syntax on

inoremap jk <ESC>

" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬

"Invisible character colors
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59


" Move line down
nnoremap - dd p

" Set line numbers
set number

" Tabs and spaces
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab


" Plugins
call plug#begin('~/.vim/plugged')
  Plug 'scrooloose/syntastic'
call plug#end()

" Move between windows
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Auto-install any new plugins
autocmd VimEnter *
	\ if !empty(filter(copy(g:plugs), '!isdirectory(v:val.dir)'))
	\|   PlugInstall | q
	\| endif

" Syntastic
let g:syntastic_javascript_checkers=['eslint']
let g:syntastic_typescript_checkers=['tsc', 'tslint']
let g:syntastic_typescript_tsc_fname = ''
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exe = 'npm run lint --'

" Put swap files in their place
set dir=~/tmp

" Disambiguate :E
cabbrev E Explore

" Typescript support
set suffixesadd=.ts

" Makes searches better
set incsearch
set hlsearch

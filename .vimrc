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


" Move between windows
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Put swap files in their place
set dir=~/tmp

" Disambiguate :E
cabbrev E Explore

" Typescript support
set suffixesadd=.ts

" Makes searches better
set incsearch
set hlsearch

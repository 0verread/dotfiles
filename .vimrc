set number
set autoindent
filetype on
syntax on

call plug#begin('~/.vim/plugged')
	Plug 'morhetz/gruvbox'
call plug#end()

colorscheme gruvbox
set background=dark
inoremap {<CR> {<CR>}<C-o>
let g:ezguifont = 'JetBrains Mono'
set tabstop=4
set statusline=
set laststatus=2
set statusline+=\ %F\ %M\ %Y


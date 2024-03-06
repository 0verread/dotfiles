set number
set autoindent
set breakindent
set linebreak
filetype on
syntax on

call plug#begin('~/.vim/plugged')
	Plug 'morhetz/gruvbox'
call plug#end()

function! GitBranch()
  return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

function! StatuslineGit()
  let l:branchname = GitBranch()
  return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
endfunction

highlight ExtraWhitespace ctermbg=red guibg=red
highlight! link goSpaceError NONE

match ExtraWhitespace /\s\+$/
autocmd BufWritePre * %s/\s\+$//e

colorscheme gruvbox
set background=dark
inoremap {<CR> {<CR>}<C-o>
let g:ezguifont = 'JetBrains Mono'
set guicursor=i:ver25-iCursor
set noshowmode
set tabstop=4
set shiftwidth=4
set expandtab
set statusline=
set statusline+=%#DiffAdd#%{(mode()=='n')?'\ \ NORMAL\ ':''}
set statusline+=%#DiffChange#%{(mode()=='i')?'\ \ INSERT\ ':''}
set statusline+=%#Cursor#%{(mode()=='v')?'\ \ VISUAL\ ':''}
set statusline+=\ %t
set laststatus=2
set statusline+=%=
set statusline+=%#CursorLine#
set statusline+=\ %Y
set statusline+=%{StatuslineGit()}


if has ('gui_running')
    set cursorline " highlight current line
endif
" set number    " display line number
set guioptions=l " scroll bar at left
set ru    " display status bar
set hls             " highlight searching keywords
set foldmethod=syntax
if has('gui_running')
    set foldcolumn=4
endif
set foldlevel=30

set ts=2
set sts=2
set smarttab
set sw=2
set et
set nobackup
execute pathogen#infect()
syntax on
filetype plugin indent on

let &t_Co=256
colorscheme molokai
" colorscheme solarized
nnoremap ; :
nnoremap : ;
noremap <silent> <Left> :bp<CR>
noremap <silent> <Right> :bn<CR>
nnoremap \ :!open <C-R>%<CR><CR>
xnoremap p pgvy

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
" filetype plugin indent on

let &t_Co=256
colorscheme molokai
" colorscheme solarized
nnoremap ; :
nnoremap : ;
noremap <silent> <Left> :bp<CR>
noremap <silent> <Right> :bn<CR>
nnoremap \ :!open <C-R>%<CR><CR>
xnoremap p pgvy


" Vundle
set nocompatible              " be iMproved
filetype off                  " required!
set rtp+=~/.vim/bundle/Vundle.vim/

call vundle#begin()

" let Vundle manage Vundle
Plugin 'gmarik/Vundle.vim'

" Plugins
Plugin 'rizzatti/funcoo.vim'
Plugin 'rizzatti/dash.vim'
Plugin 'dericofilho/vim-phpfmt'

" Color schemes
Plugin 'tomasr/molokai'
Plugin 'flazz/vim-colorschemes'

call vundle#end()
filetype plugin indent on


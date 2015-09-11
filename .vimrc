if has ('gui_running')
    set cursorline " highlight current line
endif
" set number    " display line number
set guioptions=l " scroll bar at left
set ru    " display status bar
set hls             " highlight searching keywords

set ts=2
set sts=2
set smarttab
set sw=2
set et
set nobackup

noremap ; :
noremap : ;
noremap j gj
noremap k gk
" nnoremap \ :!open <C-R>%<CR><CR>
xnoremap p pgvy
" Yank text to the OS X clipboard
noremap <leader>y "*y
noremap <leader>yy "*Y
noremap <C-n> :NERDTreeToggle<CR>

execute pathogen#infect()
syntax on

" Preserve indentation while pasting text from the OS X clipboard
" noremap <leader>p :set paste<CR>:put *<CR>:set nopaste<CR>

" Vundle
set nocompatible              " be iMproved
filetype off                  " required!
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

" let Vundle manage Vundle
Plugin 'gmarik/Vundle.vim'

" Plugins
" Base
Plugin 'rizzatti/funcoo.vim'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'rking/ag.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'godlygeek/tabular'
Plugin 'spf13/vim-autoclose'
set laststatus=2

" UI
Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'

" Language
" Plugin 'pangloss/vim-javascript'
" Plugin 'mxw/vim-jsx'
Plugin 'curist/vim-angular-template'
Plugin 'digitaltoad/vim-jade'
Plugin 'shawncplus/phpcomplete.vim'
" Plugin 'dericofilho/vim-phpfmt'
Plugin 'spf13/PIV'
Plugin 'plasticboy/vim-markdown'
Plugin 'groenewege/vim-less'

" Color schemes
Plugin 'tomasr/molokai'
Plugin 'flazz/vim-colorschemes'

call vundle#end()
filetype plugin indent on

let &t_Co=256
colorscheme molokai
let g:solarized_termtrans = 1
" colorscheme solarized
" togglebg#map('<F5>')

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

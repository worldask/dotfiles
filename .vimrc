if has ('gui_running')
    set cursorline " highlight current line
endif
" set number    " display line number
set guioptions=l " scroll bar at left
set ru    " display status bar
set hls             " highlight searching keywords

set ts=4
set sts=4
set smarttab
set sw=4
set et
set nobackup

noremap  ; :
noremap  : ;
noremap  j gj
noremap  k gk
inoremap jk <esc>
nnoremap gV `[v`]
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap     ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap     ga <Plug>(EasyAlign)

" nnoremap \ :!open <C-R>%<CR><CR>
xnoremap p pgvy
" Yank text to the OS X clipboard
noremap  <leader>y "*y
noremap  <leader>yy "*Y
noremap  <C-n> :NERDTreeToggle<CR>

" execute pathogen#infect()
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
Plugin 'mileszs/ack.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
" Plugin 'terryma/vim-multiple-cursors'
Plugin 'godlygeek/tabular'
Plugin 'spf13/vim-autoclose'
Plugin 'rbgrouleff/bclose.vim'
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
Plugin 'junegunn/vim-easy-align'
Plugin 'Valloric/YouCompleteMe'

" Plugin 'dericofilho/vim-phpfmt'
" Plugin 'spf13/PIV'
Plugin 'plasticboy/vim-markdown'
" Plugin 'groenewege/vim-less'
Plugin 'posva/vim-vue'

" PHP
Plugin 'StanAngeloff/php.vim'
Plugin '2072/PHP-Indenting-for-VIm'
" Plugin 'vim-scripts/phpfolding.vim'

" Color schemes
Plugin 'tomasr/molokai'
Plugin 'altercation/vim-colors-solarized'
Plugin 'flazz/vim-colorschemes'
Plugin 'NLKNguyen/papercolor-theme'

call vundle#end()
filetype plugin indent on

" colorscheme molokai
let &t_Co=256
set background=dark
" colorscheme solarized
" colorscheme nameofcolorscheme
colorscheme PaperColor
" togglebg#map('<F5>')

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ackprg = "ag --vimgrep"

" php.vim
let php_var_selector_is_identifier = 1

" phpfolding
map <F5> <Esc>:EnableFastPHPFolds<Cr>
map <F6> <Esc>:EnablePHPFolds<Cr>
map <F7> <Esc>:DisablePHPFolds<Cr>

" "set nofoldenable

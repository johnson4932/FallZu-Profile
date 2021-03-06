" Vundle
set nocompatible  " no compatible with vi-mode
filetype off

let vundle_install=expand('~/.vim/bundle/vundle/README.md')
if !filereadable(vundle_install)
    echo "Installing Vundle....."
    silent !mkdir -p ~/.vim/bundle
    silent !git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
endif

set rtp+=~/.vim/bundle/vundle/
call vundle#begin()

Plugin 'tpope/vim-fugitive'
Plugin 'posva/vim-vue'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'ekalinin/Dockerfile.vim'

call vundle#end()

" General
source $VIMRUNTIME/indent.vim
behave mswin

set guifont=Monaco:h14
set ai
set nocp
set nocompatible
set nopaste
set pastetoggle=<F11>
set hls
set shiftwidth=4
set tabstop=4
set backspace=2
set expandtab
set showmatch
set background=light
set display=lastline
set backspace=indent,eol,start
colorscheme desert
syntax on

highlight Comment ctermfg=darkcyan
highlight Search term=reverse ctermbg=4 ctermfg=7
highlight Normal ctermbg=black ctermfg=white
highlight ColorColumn ctermbg=none
filetype plugin on
filetype indent on
autocmd BufWritePre * :%s/\s\+$//e
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
autocmd BufWritePre *.py normal m`:%s/\s\+$//e ``
autocmd BufEnter *.php :%s/[ \t\r]\+$//e
autocmd BufWritePre *.pl :%s/\s\+$//e

set fileencodings=utf8,big5,euc-jp,gbk,euc-kr,utf-bom,iso8859-1
set encoding=utf8
set tenc=utf8
set termencoding=utf-8

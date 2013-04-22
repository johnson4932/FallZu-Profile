source $VIMRUNTIME/indent.vim
behave mswin

set guifont=Monaco:h14
"set smartindent
set ai
set nocp
set nocompatible
set nopaste
set pastetoggle=<F11>
set hls
"set sw=4
set shiftwidth=4
set tabstop=4
set expandtab
set showmatch
set background=light
set display=lastline
colorscheme desert
syntax on

highlight Comment ctermfg=darkcyan
highlight Search term=reverse ctermbg=4 ctermfg=7
highlight Normal ctermbg=black ctermfg=white
" Necessary. This setting tells vim to load latex-suite
" when a tex file opened.
filetype plugin on
filetype indent on
autocmd BufWritePre * :%s/\s\+$//e
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
autocmd BufWritePre *.py normal m`:%s/\s\+$//e ``
autocmd BufEnter *.php :%s/[ \t\r]\+$//e
autocmd BufWritePre *.pl :%s/\s\+$//e

"============utf8 ===============
" piaip's gvim settings for gvim/win32 with UTF8
" optimized for Traditional Chinese users
" last update: Mon Jun 7 17:59:54 CST 2004
"let $LANG="zh_TW.UTF-8" " locales
"set encoding=utf-8 " ability
"set fileencoding=big5 " prefer
" charset detect list. ucs-bom must be earlier than ucs*.
"set fileencodings=ascii,ucs-bom,utf-8,ucs-2,ucs-le,sjis,big5,latin1
" for console mode we use big5
set fileencodings=utf8,big5,euc-jp,gbk,euc-kr,utf-bom,iso8859-1
set encoding=utf8
set tenc=utf8
"if has("multi_byte")
"	set encoding=utf-8
"	setglobal fileencoding=utf-8
"        set fileencoding=utf-8
"	set bomb
"	set fileencodings=utf-8,ucs-bom,big5,latin1
"	set guifont=-misc-fixed-medium-r-normal-*-18-120-100-100-c-90-iso10646-1
"	set guifontwide=-misc-fixed-medium-r-normal-*-18-120-100-100-c-180-iso10646-1
"else
"        echoerr "Sorry, this version of (g)vim was not compiled with multi_byte"
"endif

"if has("gui_running")
set termencoding=utf-8
"else
"set termencoding=big5
"endif

"*****************************************************************************
"" Basic Setup
"*****************************************************************************"
"" Encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8

" Basic stuff
let mapleader=","

"" Tabs. May be overridden by autocmd rules
set tabstop=2
set softtabstop=0
set shiftwidth=2
set expandtab

set colorcolumn=80


"" Fix backspace indent
set backspace=indent,eol,start

"" Enable hidden buffers
set hidden

"" Searching
set nohlsearch
set incsearch
set ignorecase
set smartcase

" session management
let g:session_directory = "~/.config/nvim/session"
let g:session_autoload = "no"
let g:session_autosave = "no"
let g:session_command_aliases = 1
set nobackup
set noswapfile

set nocompatible

if exists('$SHELL')
    set shell=$SHELL
else
    set shell=/bin/sh
endif

" Python config
let g:python3_host_prog='/usr/bin/python3.8'
let g:python_host_prog='/usr/bin/python2.7'

" " Autocmd for various sys files
" autocmd BufWritePost *Xresources,*Xdefaults !xrdb %
" autocmd BufWritePre * %s/\s\+$//e
" autocmd BufWritePost ~/.config/bmdirs,~/.config/bmfiles !shortcuts
" autocmd BufWritePost *sxhkdrc !pkill -USR1 sxhkd
autocmd BufRead,BufNewFile *.md set filetype=markdown

syntax on
set noerrorbells
set tabstop=2 softtabstop=2
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch

set colorcolumn=80

highlight ColorColumn ctermbg=0 guibg=lightgrey
" Install vim-plug if not installed
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

call plug#begin("~/.config/nvim/plugged")

Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'

" enables completion of file paths
Plug 'ncm2/ncm2-path'

Plug 'morhetz/gruvbox'
Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-fugitive'
Plug 'leafgarland/typescript-vim'
Plug 'vim-utils/vim-man'
Plug 'git@github.com:kien/ctrlp.vim.git'

call plug#end()
" enable ncm2 for all buffers
autocmd BufEnter * call ncm2#enable_for_buffer()

" set completeopt to be what ncm2 expects
set completeopt=noinsert,menuone,noselect
colorscheme gruvbox
set backround=dark

if executable('rg')
    let g:rg_derive_root='true'
endif
let g:python_3_host_prog='/usr/bin/python3'

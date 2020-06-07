source $HOME/.config/nvim/plug.vim

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

" set completeopt to be what ncm2 expects
set completeopt=noinsert,menuone,noselect
colorscheme gruvbox
set background=dark

if executable('rg')
    let g:rg_derive_root='true'
endif
let g:python_3_host_prog='/usr/bin/python3'

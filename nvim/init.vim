source $HOME/.config/nvim/plug.vim
source $HOME/.config/nvim/basic.vim
source $HOME/.config/nvim/mappings.vim
source $HOME/.config/nvim/visual.vim
source $HOME/.config/nvim/plugins-conf.vim

if executable('rg')
    let g:rg_derive_root='true'
endif
let g:python_3_host_prog='/usr/bin/python3'

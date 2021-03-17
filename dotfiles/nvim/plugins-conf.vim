" plugings-config.vim
" " vim-airline
" let g:airline#extensions#branch#enabled = 1
" let g:airline#extensions#ale#enabled = 1
" " let g:airline#extensions#tabline#enabled = 1
" " let g:airline#extensions#tabline#buffer_min_count = 2
" let g:airline#extensions#tagbar#enabled = 1
" let g:airline_skip_empty_sections = 1
" " let g:airline_theme='bubblegum'

" "" Status bar
" set laststatus=2

" "" Use modeline overrides
" set modeline
" set modelines=10

"LSP"
" lua <<EOF
" require'nvim_lsp'.tsserver.setup{}
" EOF
"" NERDTree configuration
let g:NERDTreeChDirMode=2
let g:NERDTreeIgnore=['\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$', '__pycache__']
let g:NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$', '\.bak$', '\~$']
let g:NERDTreeShowBookmarks=1
let g:nerdtree_tabs_focus_on_files=1
let g:NERDTreeMapOpenInTabSilent = '<RightMouse>'
let g:NERDTreeWinSize = 50
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.db,*.sqlite
nnoremap <silent> <F2> :NERDTreeFind<CR>
nnoremap <silent> <F3> :NERDTreeToggle<CR>


" " CTRL-P config
" "let g:ctrlp_map = '<c-p>'
" "let g:ctrlp_cmd = 'CtrlP'
" "let g:ctrlp_working_path_mode = 'r'
" "let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']


" " NerdTree and plugin config
" map <leader>n :NERDTreeToggle<CR>
" let g:NERDTreeIndicatorMapCustom = {
"     \ "Modified"  : "✹",
"     \ "Staged"    : "✚",
"     \ "Untracked" : "✭",
"     \ "Renamed"   : "➜",
"     \ "Unmerged"  : "═",
"     \ "Deleted"   : "✖",
"     \ "Dirty"     : "✗",
"     \ "Clean"     : "✔︎",
"     \ 'Ignored'   : '☒',
"     \ "Unknown"   : "?"
"     \ }

"     " Deoplete config
" " let g:deoplete#enable_at_startup=1
" " call deoplete#custom#option('ignore_sources', {'_': ['around', 'buffer']})


" "*****************************************************************************
" "" Convenience variables
" "*****************************************************************************

" " vim-airline
" if !exists('g:airline_symbols')
"   let g:airline_symbols = {}
" endif

" if !exists('g:airline_powerline_fonts')
"   let g:airline#extensions#tabline#left_sep = ' '
"   let g:airline#extensions#tabline#left_alt_sep = '|'
"   let g:airline_left_sep          = '▶'
"   let g:airline_left_alt_sep      = '»'
"   let g:airline_right_sep         = '◀'
"   let g:airline_right_alt_sep     = '«'
"   let g:airline#extensions#branch#prefix     = '⤴' "➔, ➥, ⎇
"   let g:airline#extensions#readonly#symbol   = '⊘'
"   let g:airline#extensions#linecolumn#prefix = '¶'
"   let g:airline#extensions#paste#symbol      = 'ρ'
"   let g:airline_symbols.linenr    = '␊'
"   let g:airline_symbols.branch    = '⎇'
"   let g:airline_symbols.paste     = 'ρ'
"   let g:airline_symbols.paste     = 'Þ'
"   let g:airline_symbols.paste     = '∥'
"   let g:airline_symbols.whitespace = 'Ξ'
" else
"   let g:airline#extensions#tabline#left_sep = ''
"   let g:airline#extensions#tabline#left_alt_sep = ''

"   " powerline symbols
"   let g:airline_left_sep = ''
"   let g:airline_left_alt_sep = ''
"   let g:airline_right_sep = ''
"   let g:airline_right_alt_sep = ''
"   let g:airline_symbols.branch = ''
"   let g:airline_symbols.readonly = ''
"   let g:airline_symbols.linenr = ''
" endif

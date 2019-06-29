set number
syntax on

filetype plugin on
filetype indent on

call plug#begin()
Plug 'dylanaraps/wal.vim'
Plug 'https://github.com/vim-syntastic/syntastic.git'
Plug 'https://github.com/Townk/vim-autoclose'
call plug#end()

colorscheme wal

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

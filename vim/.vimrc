" ================ Plug Manager ====================
" https://github.com/junegunn/vim-plug
"
call plug#begin()

Plug 'mtdl9/vim-log-highlighting' " https://github.com/MTDL9/vim-log-highlighting
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " https://github.com/junegunn/fzf.vim
Plug 'junegunn/fzf.vim'

" color scheme
Plug 'joshdick/onedark.vim'
Plug 'itchyny/lightline.vim'


call plug#end()

" ================ Config ====================
"
set nu
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set list
set listchars=tab:→\ ,trail:·
set hlsearch
set autoread

set laststatus=2


syntax on
colorscheme onedark

" let g:onedark_termcolors=16



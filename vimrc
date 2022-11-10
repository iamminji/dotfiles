" ================ Plug Manager ====================
" https://github.com/junegunn/vim-plug

" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

call plug#begin()

Plug 'mtdl9/vim-log-highlighting' " https://github.com/MTDL9/vim-log-highlighting
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " https://github.com/junegunn/fzf.vim
Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdtree'
Plug 'terryma/vim-multiple-cursors'
Plug 'dense-analysis/ale'

" color scheme
Plug 'joshdick/onedark.vim'
Plug 'itchyny/lightline.vim'

" rust
Plug 'rust-lang/rust.vim'

" golang
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" Add maktaba and codefmt to the runtimepath.
" (The latter must be installed before it can be used.)
" Plug 'google/vim-maktaba'
" Plug 'google/vim-codefmt'
" Also add Glaive, which is used to configure codefmt's maktaba flags. See
" `:help :Glaive` for usage.
" Plug 'google/vim-glaive'

" rainbow brackets
Plug 'luochen1990/rainbow'

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
set fileformat=unix

set laststatus=2

set re=0
set syn=sh

syntax enable
colorscheme onedark
filetype plugin indent on

" let g:onedark_termcolors=16
let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle

" Start NERDTree and put the cursor back in the other window.
" autocmd VimEnter * NERDTree | wincmd p

let g:rustfmt_autosave = 1
let g:rustfmt_command = "rustup run stable rustfmt"
let NERDTreeShowHidden=1

" vim cursor
" " Reference chart of values:
"   Ps = 0  -> blinking block.
"   Ps = 1  -> blinking block (default).
"   Ps = 2  -> steady block.
"   Ps = 3  -> blinking underline.
"   Ps = 4  -> steady underline.
"   Ps = 5  -> blinking bar (xterm).
"   Ps = 6  -> steady bar (xterm).
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

set ttimeout
set ttimeoutlen=1
set ttyfast

" backspace
set backspace=indent,eol,start

set smartindent
set noexpandtab

"augroup autoformat_settings
"  autocmd FileType c,cpp,proto AutoFormatBuffer clang-format
"  autocmd FileType go AutoFormatBuffer gofmt
"  autocmd FileType html,css,sass,scss,less,json AutoFormatBuffer js-beautify
"  autocmd FileType python AutoFormatBuffer autopep8
"  autocmd FileType rust AutoFormatBuffer rustfmt
"  autocmd FileType vue AutoFormatBuffer prettier
"augroup END
"

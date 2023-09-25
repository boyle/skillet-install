set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
call plug#begin()
Plug 'wincent/command-t'
Plug 'vim-scripts/DrawIt'
Plug 'ftorres16/spice.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'othree/html5.vim'
Plug 'pangloss/vim-javascript'
Plug 'evanleck/vim-svelte'
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'mattn/emmet-vim'
Plug 'dense-analysis/ale'
call plug#end()            " required
filetype plugin indent on    " required
" Install plugins through vim-plug
" $ vim +PlugInstall +qall

syntax enable
set background=dark
colorscheme solarized
let g:limelight_conceal_ctermfg = 245  " Solarized Base1
let g:limelight_conceal_guifg = '#8a8a8a'  " Solarized Base1
set updatetime=100 " for vim-gitgutter updates @ 100ms
" fix vim-gitgutter background for solarized colours
autocmd ColorScheme * highlight! link SignColumn LineNr

python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup
set laststatus=2

set tabstop=4      " To match the sample file
set expandtab    " Use spaces, not tabs
set shiftwidth=4
set softtabstop=-1
set showtabline=4
%retab!

" return to the most recent line when reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif

au BufRead,BufNewFile *.net             setfiletype spice

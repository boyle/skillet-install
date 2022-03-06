set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'vundle'
Plugin 'command-t'
Plugin 'DrawIt'
call vundle#end()            " required
filetype plugin indent on    " required
" Install plugins through Vundle
" $ vim +PluginInstall +qall

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

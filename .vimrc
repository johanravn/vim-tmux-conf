filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Sublime theme "
" Syntax checker "
"# Plugin 'vim-syntastic/syntastic'
" Plugin 'vim-python/python-syntax' "
" Python syntax error "

Plugin 'nvie/vim-flake8'
let python_highlight_all = 1
syntax on
" Folder tree "
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'

Plugin 'ErichDonGubler/vim-sublime-monokai'
" Set numbering "
set nu

call vundle#end()            " required
filetype plugin indent on    " required

syntax on
colorscheme sublimemonokai 
set t_Co=256

if &term =~ '256color'
    " disable Background Color Erase (BCE) so that color schemes
    " render properly when inside 256-color tmux and GNU screen.
    " see also http://snk.tuxfamily.org/log/vim-256color-bce.html
    set t_ut=
endif

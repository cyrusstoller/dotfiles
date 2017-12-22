set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'flazz/vim-colorschemes'
Plugin 'tpope/vim-markdown'
Plugin 'kien/ctrlp.vim'
Plugin 'posva/vim-vue'
" Plugin 'tpope/vim-fugitive'
" Plugin 'git://git.wincent.com/command-t.git'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Enable line numbers
set number
" Enable syntax highlighting
syntax on

" Show “invisible” characters
" set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_
" set list
" Highlight searches
set hlsearch
" Ignore case of searches
set ignorecase

" Make tabs as wide as two spaces and convert to spaces
set tabstop=2
set shiftwidth=2
set expandtab

autocmd FileType markdown set textwidth=79

colorscheme molokai

set colorcolumn=80
set nowrap

" Using the system clipboard as the default register
set clipboard=unnamed

" emacs navigation in insert mode
inoremap <C-e> <esc>$a
inoremap <C-a> <esc>0i
" inoremap <C-u> <esc>ld0i
" inoremap <C-k> <C-o>D

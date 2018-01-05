set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'flazz/vim-colorschemes'
Plugin 'plasticboy/vim-markdown'
Plugin 'kien/ctrlp.vim'
Plugin 'posva/vim-vue'
Plugin 'tpope/vim-surround'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" typescript plugins
Plugin 'leafgarland/typescript-vim'
Plugin 'Quramy/tsuquyomi'
" Plugin 'tpope/vim-fugitive'
" Plugin 'git://git.wincent.com/command-t.git'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set number " Enable line numbers
syntax on " Enable syntax highlighting

" Show “invisible” characters
" set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_
" set list

set hlsearch " Highlight searches
set ignorecase " Ignore case of searches
set smartcase

" Make tabs as wide as two spaces and convert to spaces
set tabstop=2
set shiftwidth=2
set expandtab
set bs=2

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

" ignore files not tracked in git for ctrl-p
let g:ctrlp_user_command = {
  \ 'types': {
    \ 1: ['.git', 'cd %s && git ls-files --cached --exclude-standard --others'],
    \ 2: ['.hg', 'hg --cwd %s locate -I .'],
    \ },
  \ 'fallback': 'find %s -type f'
  \ }

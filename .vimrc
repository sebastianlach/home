" Header {
"   File:           ~/.vimrc
"   Version:        0.4
"   Author:         Sebastian Łach <root@slach.eu>
"   Created:        6th June 2011
"   Updated:        18th May 2016
"   URL:            http://www.slach.eu/
"   Description:    A minimal .vimrc file.
" }

set nocompatible " State explicitly vi-compatible mode off
set encoding=utf-8
set fileencoding=utf-8

"let g:airline_powerline_fonts = 1
"let g:airline_theme='solarized'
"let g:ctrlp_working_path_mode = 0
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\.git$\|\.hg$\|\.svn$',
    \ 'file': '\.pyc$'
    \ }

" Packages {

    filetype off
    set rtp+=~/.vim/Vundle.vim
    call vundle#begin()

    Plugin 'VundleVim/Vundle.vim'       " Vim plugins manager
    Plugin 'tpope/vim-sensible'      " Defaults everyone can agree on
    Plugin 'tpope/vim-fugitive'      " Git wrapper
    Plugin 'slim-template/vim-slim'  " Slim syntax highlighting
    Plugin 'scrooloose/syntastic'    " Syntax checking hacks
    Plugin 'ctrlpvim/ctrlp.vim'
    Plugin 'airblade/vim-gitgutter'
    "Plugin 'vim-airline/vim-airline'
    "Plugin 'vim-airline/vim-airline-themes'
 
    call vundle#end()
    filetype plugin indent on
" }


" General {
    syntax on           " Enable syntax highlight
    set ignorecase      " Case-insensitive searching
    set list            " Display white characters
    set nobackup        " No backup
    set nowritebackup   " No write backup
    set noswapfile      " No swap file
    set hlsearch        " Highlight all matches
    set number          " Show line numbers
" }


" Tabing & Indent {
    set tabstop=4       " Set tab width
    set shiftwidth=4    " Tab width for reindent operations
    set expandtab       " Insert spaces instead of tabsg
    set smarttab        " To use tabs in a more 'semantic' way
    set cindent         " Enable automatic C-style indenting
" }


" Hotkeys Mapping {
    " Tabs navigation binding
    map <C-l> :tabn<CR>
    map <C-h> :tabp<CR>
    " Windows navigation binding
    map <C-J> <C-W>j<C-W>_
    map <C-K> <C-W>k<C-W>_
    " Make binding
    noremap <F5> :make<CR>
    noremap <C-n> :!nosetests<CR>
    " ChromeOS keyboard layout binding
    map <C-a> <Home>
    map <C-e> <End>
" }


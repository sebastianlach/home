" Header {
"   File:           ~/.vimrc
"   Version:        0.8
"   Author:         Sebastian Łach <root@slach.eu>
"   Created:        6th June 2011
"   Updated:        5th December 2021
"   URL:            http://www.slach.eu/
"   Description:    A reasonable .vimrc file.
" }

" Encoding {
    set nocompatible
    set encoding=utf-8
    set fileencoding=utf-8
" }

" Packages {
    filetype off
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

" Tabing & indent {
    set tabstop=4       " Set tab width
    set shiftwidth=4    " Tab width for reindent operations
    set expandtab       " Insert spaces instead of tabsg
    set smarttab        " To use tabs in a more 'semantic' way
    set cindent         " Enable automatic C-style indenting
" }

" Line length {
    set colorcolumn=80
    highlight ColorColumn ctermbg=Black
" }

" Hotkeys mapping {
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
    " Paste toggle
    set pastetoggle=<C-d>
" }

" Plugin CtrlP {
    let g:ctrlp_working_path_mode = 'r'
    let g:ctrlp_custom_ignore = {
        \ 'dir':  '\.git$\|\.hg$\|\.svn$\|venv$',
        \ 'file': '\.pyc$'
        \ }
" }

" Plugin Airline {
    let g:airline_powerline_fonts = 1
    let g:airline_theme='cool'
    let g:airline_symbols = {}
    let g:airline_symbols.linenr = '#'
    let g:airline_symbols.dirty='#'
    let g:airline#extensions#tabline#enabled = 1
    let g:airline#extensions#tabline#formatter = 'unique_tail'
" }

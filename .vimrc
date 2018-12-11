" Required for vim to be iMproved
set nocompatible

" Determines filetype from name to allow intelligent auto-indenting, etc.
filetype indent plugin on

" Enable syntax highlighting
syntax on
colorscheme Tomorrow-Night

" Better command-line completion
set wildmenu

" Use case insensitive search except when using capital letters
set ignorecase
set smartcase

" When opening a new line and no file-specific indenting is enabled,
" keep same indent as the line you're currently on
set autoindent

" Display line numbers on the left
set number

" Indentation options, change according to personal preference

" Number of visual spaces per TAB
set tabstop=4

" Number of spaces in TAB when editing
set softtabstop=4

" Number of spaces indented when reindent operations (>> and <<) are used
set shiftwidth=4

" Convert TABs to spaces
set expandtab

" Enable intelligent tabbing and spacing for indentation and alignment
set smarttab

" change cursor based on mode
let &t_SI.="\e[5 q"
let &t_SR.="\e[4 q"
let &t_EI.="\e[1 q"

:imap jk <Esc>

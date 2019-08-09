" Required for vim to be iMproved
set nocompatible


" Determines filetype from name to allow intelligent auto-indenting, etc.
filetype indent plugin on


" Better command-line completion
set wildmenu


" UI
syntax on  " Enable syntax highlighting
colorscheme Tomorrow-Night
set number  " Display line numbers on the left
set cursorline


" Mode-Sensitive Cursor
let &t_SI.="\e[5 q"  " blinking bar
let &t_SR.="\e[3 q"  " blinking underline
let &t_EI.="\e[1 q"  " blinking block
augroup myCmds
au!
autocmd VimEnter * silent !echo -ne "\e[1 q"
augroup END


" Search
set incsearch  " search as characters are entered
set hlsearch  " highlight matches
set ignorecase  " ignore case
set smartcase  " except when using capital letters


" Indentation
set tabstop=4  " Number of visual spaces per TAB
set softtabstop=4  " Number of spaces in TAB when editing
set shiftwidth=4  " Number of spaces indented when reindent operations (>> and <<) are used
set expandtab  " Convert TABs to spaces
set smarttab  " Enable intelligent tabbing and spacing for indentation and alignment
set autoindent  " When opening a new line and no file-specific indenting is enabled, keep same indent as the line you're currently on


" Key Remaps
:imap jk <Esc>

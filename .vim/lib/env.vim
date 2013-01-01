let $JS_CMD = 'node'
let g:Powerline_symbols = 'compatible'

set nocompatible          " Don't care about Vi-compatibility
set mouse=                " Disabling mouse support
set modelines=0
set backspace=indent,eol,start  " Backspace for dummies?

scriptencoding utf-8        " Setting character encoding in the script
set encoding=utf8

set autoread                " Autoread a file when it's changed from outside
set ttyfast
set history=1000            " Remember ALL THE commands!
set spell                   " Enable spell checking
set hidden                  " Change buffer without saving

set magic
set noswapfile
set lazyredraw

set undolevels=1000       " Do ALL THE undo's!
set undoreload=10000      " Maximum number lines to save for undo on a buffer reload

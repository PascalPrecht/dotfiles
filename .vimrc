" Environment {
  " Basics {
    set nocompatible          " Don't care about Vi-compatibility
  " }
" }

" General {

  filetype plugin indent on
  syntax on                   " Enable syntax highlighting
  scriptencoding utf-8        " Setting character encoding in the script
  set shortmess+=filmnrxoOtT  " Short messaging in commandline
  set virtualedit=onemore     " Allow for cursor beyond last character
  set history=1000            " Remember ALL THE commands!
  set spell                   " Enable spell checking
  set hidden                  " Change buffer without saving

  " Files 'n Stuff {
    set backup                " Delete old backup, backup current file
    set undolevels=1000       " Do ALL THE undo's!
    set undoreload=10000      " Maximum number lines to save for undo on a buffer reload
  " }
" }

" GUI {

  colorscheme monokai

  " Commandline {
    set showcmd
    set showmode                " Show current mode on commandline
    set cursorline              " Highlight cursorline!
    set ruler                   "Always show current position
  " }

  " Statusline {
    set laststatus=2                          " Windows always will have a status line
    set statusline=%<%f\                      " Filename
    set statusline+=%w%h%m%r                  " Options
    set statusline+=\ [%{&ff}/%Y]             " Filetype
    set statusline+=\ [%{getcwd()}]           " Current directory
    set statusline+=%=%-14.(%l,%c%V%)\ %p%%   " Right aligned file nav info
  " }

  set backspace=indent,eol,start  " Backspace for dummies?
  set nu                          " Enable numbers
  set showmatch                   " Show matching brackets (Damn this is so cool!)

  " Searching {
    set incsearch
    set hlsearch
    set ignorecase                " Case insensitive search
    set smartcase                 " Case sensitive when uc present
  " }

  set wildmenu                    " Enable wild menu
  set wildmode=list:longest,full
  set scrolljump=5
  set scrolloff=3
  set list

  " Formatting {
    set nowrap
    set autoindent
    set shiftwidth=2
    set expandtab
    set tabstop=2
    set softtabstop=2
  " }
" }


set autoread " Autoread a file when it's changed from outside
set modelines=0
set tabstop=2
set shiftwidth=2 
set softtabstop=2
set smarttab
set expandtab

let mapleader = ',' " Change mapleader

" Open up .vimrc quickly in a new buffer
nnoremap  <leader>ev :vsp $MYVIMRC<cr>

" And resource it as fast as light
nnoremap  <leader>sv :source $MYVIMRC<cr>

" Disabling arrow keys in normal and insert mode
noremap   <up> <nop>
noremap   <down> <nop>
noremap   <left> <nop>
noremap   <right> <nop>
inoremap  <up> <nop>
inoremap  <down> <nop>
inoremap  <left> <nop>
inoremap  <right> <nop>

" Also disabling escape key. It's too far away!
inoremap  <esc> <nop>

" 'jk' is much better :)
inoremap  jk <esc>

" Fast saving
nnoremap <leader>w :w!<cr>

set lines=999 " Open the tallest window possible
set columns=9999 " Open the widest window possible
set cmdheight=3 "The commandbar height
set hlsearch " Highlight search matches

 " Set magic on, for regular expressions
 set magic

 " No sound on errors
 set noerrorbells
 set visualbell
 set t_vb=
 set tm=500

 """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 "	=> Colors and fonts
 """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""  
 " Enable syntax highligthing

    set guioptions-=T " Set off menubar
    set guifont=Inconsolata\ 18
	set t_Co=256 " Set count of terminal colors

 " Set the encoding
 set encoding=utf8
 """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 "	=> Text, tab and indent related 
 """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""  
 
 
 " Set text width
 set tw=500

 " Set autoindent

 " Set smartindent
 set smartindent

 " Wrap lines
 

 """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 "	=> Plugin settings 
 """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""  
 " Use Node.js for JavaScript interpretation
 let $JS_CMD='node'

au BufRead,BufNewFile *.tpl set filetype=smarty 
 
 """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 "	=> Key Mapping
 """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""  
 map <C-B> :!php -l %<CR>
 cmap ff<CR> :FuzzyFinderFile<CR>
 cmap ffb<CR> :FuzzyFinderBuffer<CR>

source ~/.vim/plugin/matchit.vim 
source ~/.vim/plugin/php-doc.vim 
inoremap <C-P> <ESC>:call PhpDocSingle()<CR>i 
nnoremap <C-P> :call PhpDocSingle()<CR> 
vnoremap <C-P> :call PhpDocRange()<CR> 


augroup trailing
    au!
    au InsertEnter * :set listchars-=trail:⌴
    au InsertLeave * :set listchars+=trail:⌴
augroup END

nnoremap <F3> :NumbersToggle<CR>
 " Enable filetype plugin

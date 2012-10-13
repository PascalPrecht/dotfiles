" Use the better one!
set nocompatible

" Change mapleader
let mapleader = ','

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


 " Sets how many lines of history VIM has to remember
 set history=700

 " Enable filetype plugin
 filetype plugin on
 filetype indent on

 " Set to auto read when a file is changed from the outside
 set autoread

 " Fast saving
" nmap <leader>w :w!<cr>

"if has("gui_running")
  "set fuoptions=maxvert,maxhorz
  "au GUIEnter * set fullscreen
"endif

 """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 "	=> User interface
 """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""  
 set lines=500 

 set columns=162

 " Turn on Wild menu
 set wildmenu

 "Always show current position
 set ruler

 "The commandbar height
 set cmdheight=2

 "Change buffer without saving
 set hid
 set guioptions-=r
 set guioptions-=L

 set smartcase

 " Highlight search things
 set hlsearch

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
 syntax enable

    set guioptions-=T " Set off menubar
    set guifont=Inconsolata\ 18
	set t_Co=256 " Set count of terminal colors
	set background=light
	colorscheme Monokai
	set number

 " Set the encoding
 set encoding=utf8
 """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 "	=> Text, tab and indent related 
 """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""  
 
 set expandtab
 set tabstop=2
 set shiftwidth=2 
 set smarttab
 
 " Set text width
 set tw=500

 " Set autoindent
 set autoindent

 " Set smartindent
 set smartindent

 " Wrap lines
 set wrap
 
 set incsearch

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

set list

augroup trailing
    au!
    au InsertEnter * :set listchars-=trail:⌴
    au InsertLeave * :set listchars+=trail:⌴
augroup END

nnoremap <F3> :NumbersToggle<CR>

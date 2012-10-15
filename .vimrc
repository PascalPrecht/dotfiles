set nocompatible " Don't care about Vi-compatibility
set wildmenu " Turn wildmenu on
set history=1000 " Remember ALL THE commands!
set autoread " Autoread a file when it's changed from outside

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
set ruler "Always show current position
set cmdheight=3 "The commandbar height
set hidden " Change buffer without saving
set ignorecase
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
 " Enable filetype plugin
 filetype plugin on
 filetype indent on

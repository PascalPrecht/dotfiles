"""""""""""""""""""""""""""""""""""""""""""""""
"  __   __ __   __    __   ______   ______    "
" /\ \ / //\ \ /\  -./  \ /\  == \ /\  ___\   "
" \ \ \'/ \ \ \\ \ \-./\ \\ \  __< \ \ \____  "
"  \ \__|  \ \_\\ \_\ \ \_\\ \_\ \_\\ \_____\ "
"   \/_/    \/_/ \/_/  \/_/ \/_/ /_/ \/_____/ "
"                                             "
"               Pascal Precht                 "
"               @PascalPrecht                 "
"                                             "
"""""""""""""""""""""""""""""""""""""""""""""""

let $JS_CMD = 'node'
let mapleader = ','
let maplocalleader = ','

set nocompatible                " Don't care about Vi-compatibility
scriptencoding utf-8            " Character encoding
set encoding=utf8
set mouse=                      " Disabling mouse support
set modelines=0
set backspace=indent,eol,start  " Backspace for dummies?
set autoread                    " Autoread a file when it's changed from outside

set history=1000                " Remember ALL THE commands!
set undolevels=1000             " Do ALL THE undo's!
set undoreload=10000            " Maximum number lines to save for undo on a buffer reload

set ttyfast                     " Smoother terminal connection
set nospell                     " Disable spell checking basically
set hidden                      " Change buffer without saving
set magic                       " Better searching

set noswapfile                  " Don't pollute my hard drive, even temporary
set lazyredraw
set whichwrap=b,s

set cryptmethod=blowfish        " Use strong blowfish algorithm when encrypting files

filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'kchmck/vim-coffee-script'
Bundle 'editorconfig/editorconfig-vim'
Bundle 'christoomey/vim-tmux-navigator'
Bundle 'mikewest/vimroom'
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-unimpaired'

filetype plugin indent on

set guioptions=TlrLR
set t_Co=256

if &term =~ '256color'
  " Disable Background Color Erase (BCE) so that color schemes
  " work properly when Vim is used inside tmux and GNU screen.
  " See also http://snk.tuxfamily.org/log/vim-256color-bce.html
  set t_ut=
endif

set background=dark
colorscheme badwolf
syntax on

"set list
"set relativenumber

set scrolljump=5
set scrolloff=3

set wildmenu                                      " Enable wild menu
set wildmode=list:longest,full
set wildignore+=.git,.svn                         " Version control
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg    " binary images
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest  " compiled object files
set wildignore+=*.sw?                             " Vim swap files
set wildignore+=*.DS_Store                        " OSX bullshit
set wildignore+=*.zip                             " zip

set showmatch                                     " Show matching brackets (Damn this is so cool!)
set matchtime=3

set incsearch
set hlsearch
set ignorecase                                    " Case insensitive search
set smartcase                                     " Case sensitive when uc present

set statusline=%f\ %m\ %r%=\ Line:%l/%L[%p%%]\ Col:%v\ Buf:#%n\ [%b][0x%B]

set showcmd
set showmode                                      " Show current mode on commandline
set cmdheight=2                                   " The commandline height
set shortmess+=filmnrxoOtT                        " Short messaging in commandline
set laststatus=2                                  " Windows always will have a status line

set cursorline                                    " Highlight cursorline!
set ruler                                         " Always show current position

highlight ColorColumn ctermbg=blue
call matchadd('ColorColumn', '\%81v', 100)

set virtualedit=onemore                           " Allow for cursor beyond last character

set foldlevelstart=0
set foldenable

set wrap
set autoindent
set smartindent

set shiftround
set shiftwidth=2
set expandtab
set tabstop=2
set softtabstop=2
set smarttab

set tw=500                                        " Set text width
set formatoptions=qrn1

set noerrorbells
set visualbell
set t_vb=

set splitbelow                                    " Split current window below
set splitright                                    " Split current window right
set title
"set lines=999                                     " Open the tallest window possible
"set columns=9999                                  " Open the widest window possible

nnoremap <leader>bi :BundleInstall<cr>
nnoremap <leader>bi! :BundleInstall!<cr>
nnoremap <leader>bl :BundleList<cr>
nnoremap <leader>bc :BundleClean<cr>
nnoremap <leader>bs :BundleSearch<space>

" Statline Settings
let g:statline_no_encoding_string = '[???]'
let g:statline_filename_relative = 1
let g:statline_show_charcode = 1

" CtrlP Settings
let g:ctrlp_switch_buffer = 'E'
let g:ctrlp_tabpage_position = 'c'
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_working_path_mode = 'rc'
let g:ctrlp_show_hidden = 1
let g:ctrlp_open_multiple_files = '2vjr'

" Open up .vimrc quickly in a new buffer
nnoremap  <leader>ev :vsp $MYVIMRC<cr>
" Source .vimrc explitly
nnoremap  <leader>sv :source $MYVIMRC<cr>

" kill vim
map <silent> <leader>k :qall!<cr>

" Disabling escape key. It's too far away!
inoremap  <esc> <nop>
" `jk` is much better :)
inoremap  jk <esc>

" Ex-mode is shitty
nnoremap  Q <nop>

" Fast saving
nnoremap <leader>w :w!<cr>

" Remove highlighted search
nnoremap <leader><space> :noh<cr>

" e2e matching
nnoremap <tab> %
vnoremap <tab> %

" Folding
nnoremap <Space> za
vnoremap <Space> za

" Remove trailing whitespaces
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<cr>

" Surround current word with double quotes
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel

" Surround current word with single quotes
nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel

" Disable arrow keys in command mode
cnoremap <Up> <nop>
cnoremap <Down> <nop>

" Use vim way instead
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>

" easy expansion
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h') . '/' : '%%'

" Disabling arrow keys in normal and insert mode
nnoremap  <up> <nop>
nnoremap  <down> <nop>
nnoremap  <left> <nop>
nnoremap  <right> <nop>
inoremap  <up> <nop>
inoremap  <down> <nop>
inoremap  <left> <nop>
inoremap  <right> <nop>

nnoremap <leader>v :vsp<cr>

nnoremap j gj
nnoremap k gk
nnoremap ; :
nnoremap : ;

" Stronger h and l
nnoremap H 0
nnoremap L $

" Always use virtual block mode
nnoremap v  <C-V>
nnoremap <C-V>  v

" faster movement
nmap J 5j
nmap K 5k
xmap J 5j
xmap K 5k

" quick pairs
inoremap <leader>' ''<esc>i
inoremap <leader>" ""<esc>
inoremap <leader>( ()<esc>i
inoremap <leader>[ []<esc>i

" Search for non breaking spaces (ascii 160) Thank you Stø!
nnoremap <leader>hw :/\%xa0<cr>

" Keep search pattern at the center of the screen
nnoremap <silent> n nzz
nnoremap <silent> N Nzz
nnoremap <silent> * *zz
nnoremap <silent> # #zz
nnoremap <silent> g* g*zz
nnoremap <silent> g# g#zz

" Use just CTRL instead of CTRL-W to switch between windows
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" This rewires n and N to do the highlighing...
nnoremap <silent> n   n:call HLNext(0.2)<cr>
nnoremap <silent> N   N:call HLNext(0.2)<cr>

function! HLNext (blinktime)
    highlight WhiteOnRed ctermfg=white ctermbg=red
    let [bufnum, lnum, col, off] = getpos('.')
    let matchlen = strlen(matchstr(strpart(getline('.'),col-1),@/))
    let target_pat = '\c\%#'.@/
    let ring = matchadd('WhiteOnRed', target_pat, 101)
    redraw
    exec 'sleep ' . float2nr(a:blinktime * 1000) . 'm'
    call matchdelete(ring)
    redraw
endfunction

" in next parens
onoremap in( :<c-u>normal! f(vi(<cr>
" on a function name in the current line
onoremap F :<c-u>normal! 0f(hviw<cr>

cabbrev qalL qall
cabbrev Qall qall

"augroup autoload_vimrc
"au!
" automatically reload vimrc when it's saved
"au BufWritePost $MYVIMRC so $MYVIMRC
"augroup END

augroup highlight_nbsp
  au!
  au BufEnter * highlight NonBreakingSpace guibg=red
  au BufEnter * :match NonBreakingSpace /\%xa0/
augroup END

augroup trailing_chars
  au!
  au InsertEnter * :set listchars-=nbsp:¬,eol:¶,tab:>-,extends:»,precedes:«,trail:•
  au InsertLeave * :set listchars+=nbsp:¬,eol:¶,tab:>-,extends:»,precedes:«,trail:•
augroup END

"augroup number_mode_switch
"au!
"autocmd InsertEnter * set number
"autocmd InsertLeave * set relativenumber
"augroup END

augroup filetype_mapping
  au!
  au BufEnter,BufNewFile,BufRead *.ejs set filetype=html
  au BufEnter,BufNewFile,BufRead *.less set filetype=css
augroup END

augroup filetype_vim
  au!
  au FileType vim setlocal foldmethod=marker
  " Line-wise comments
  au Filetype vim nnoremap <buffer> <localleader>; I"<esc>A<esc>
augroup END

augroup filetype_html
  au!
  " Line-wise comments
  au Filetype html nnoremap <buffer> <localleader>C I<!--<esc>A--><esc>
  " Block-wite comments
  au Filetype html vnoremap <buffer> <localleader>C <esc>`<I<!--<esc>`>A--><esc>
augroup END

augroup filetype_css
  au!
  " Line-wise comments
  au Filetype css nnoremap <buffer> <localleader>C I/*<esc>A*/<esc>
  " Block-wise comments
  au Filetype css vnoremap <buffer> <localleader>C <esc>`<I/*<esc>`>A*/<esc>
augroup END

augroup filetype_javascript
  au!
  " Line-wise comments
  au Filetype javascript nnoremap <buffer> <localleader>C I//<esc>
  " block-wise comments
  au Filetype javascript vnoremap <buffer> <localleader>C <esc>`<I/*<esc>`>A*/<esc>
augroup END

augroup filetype_go
  au!
  " Line-wise comments
  au Filetype go nnoremap <buffer> <localleader>C I/*<esc>A*/<esc>
  " block-wise comments
  au Filetype go vnoremap <buffer> <localleader>C <esc>`<I/*<esc>`>A*/<esc>
augroup END

augroup filetype_coffeescript
  au!
  " Line-wise comments
  au Filetype coffeescript nnoremap <buffer> <localleader>C I#<esc>
augroup END

" Environment {
    let $JS_CMD='node'
  " Basics {
    set nocompatible          " Don't care about Vi-compatibility
    set modelines=0
  " }
" }

" General {

  set autoread                " Autoread a file when it's changed from outside
  set ttyfast
  set lines=999               " Open the tallest window possible
  set columns=9999            " Open the widest window possible
  filetype plugin indent on
  syntax on                   " Enable syntax highlighting
  scriptencoding utf-8        " Setting character encoding in the script
  set encoding=utf8
  set shortmess+=filmnrxoOtT  " Short messaging in commandline
  set virtualedit=onemore     " Allow for cursor beyond last character
  set history=1000            " Remember ALL THE commands!
  set spell                   " Enable spell checking
  set hidden                  " Change buffer without saving
  set magic
  set noswapfile

  " Window {
    set splitbelow            " Split current window below
    set splitright            " Split current window right
    set title
  " }

  " Files 'n Stuff {
    set backup                " Delete old backup, backup current file
    set undolevels=1000       " Do ALL THE undo's!
    set undoreload=10000      " Maximum number lines to save for undo on a buffer reload
  " }
" }

" GUI {

  set guioptions-=T           " Set off menubar
  set guifont=Inconsolata\ 18
  set t_Co=256                " Set count of terminal colors
  colorscheme clouds

  " Commandline {
    set showcmd
    set showmode                " Show current mode on commandline
    set cursorline              " Highlight cursorline!
    set ruler                   " Always show current position
    set cmdheight=3             " The commandline height
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
  set relativenumber
  set showmatch                   " Show matching brackets (Damn this is so cool!)
  set matchtime=3

  " Searching {
    set incsearch
    set hlsearch
    set ignorecase                " Case insensitive search
    set smartcase                 " Case sensitive when uc present
  " }

  set wildmenu                                      " Enable wild menu
  set wildmode=list:longest,full
  set wildignore+=.git,.svn                         " Version control
  set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg    " binary images
  set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest  " compiled object files
  set wildignore+=*.sw?                             " Vim swap files
  set wildignore+=*.DS_Store                        " OSX bullshit

  set scrolljump=5
  set scrolloff=3
  set list

  " Formatting {
    set wrap
    set autoindent
    set smartindent
    set shiftwidth=2
    set expandtab
    set tabstop=2
    set softtabstop=2
    set smarttab
    set tw=500                    " Set text width
    set colorcolumn=85
    set formatoptions=qrn1
  " }

  " Sounds {
    set noerrorbells
    set visualbell
    set t_vb=
  " }

  " Key mappings {
    let mapleader = ',' " Change mapleader
    " Open up .vimrc quickly in a new buffer
    nnoremap  <leader>ev :vsp $MYVIMRC<cr>
    " And resource it as fast as light
    nnoremap  <leader>sv :source $MYVIMRC<cr>

    " Disabling arrow keys in normal and insert mode
    nnoremap   <up> <nop>
    nnoremap   <down> <nop>
    nnoremap   <left> <nop>
    nnoremap   <right> <nop>
    inoremap  <up> <nop>
    inoremap  <down> <nop>
    inoremap  <left> <nop>
    inoremap  <right> <nop>

    nnoremap j gj
    nnoremap k gk
    nnoremap ; :

    " Also disabling escape key. It's too far away!
    inoremap  <esc> <nop>
    " 'jk' is much better :)
    inoremap  jk <esc>
    " Fast saving
    nnoremap <leader>w :w!<cr>
    nnoremap <leader><space> :noh<cr>
    nnoremap <tab> %
    vnoremap <tab> %

    " Remove trailing whitespaces
    nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>
    " Using CAPS LOCK instead of CTRL to switch between windows
    nnoremap <C-h> <C-w>h
    nnoremap <C-j> <C-w>j
    nnoremap <C-k> <C-w>k
    nnoremap <C-l> <C-w>l
  " }
" }

" Autocommands {
  augroup trailing
      au!
      au InsertEnter * :set listchars-=trail:⌴
      au InsertLeave * :set listchars+=trail:⌴
  augroup END
" }

" Abbreviations {
  iabbrev ldis ಠ_ಠ
  iabbrev lsad ಥ_ಥ
  iabbrev lhap ಥ‿ಥ
  iabbrev lmis ಠ‿ಠ
" }

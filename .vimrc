" Environment {{{
    let $JS_CMD='node'
  " Basics {{{
    set nocompatible          " Don't care about Vi-compatibility
    set modelines=0
    set mouse=                " Disabling mouse support
    set foldlevelstart=0
  " }}}
" }}}

" Vundle {{{
  filetype off

  set rtp+=~/.vim/bundle/vundle/
  call vundle#rc()

  " Vundle itself
  Bundle 'gmarik/vundle'
  " Easymotion
  Bundle 'Lokaltog/vim-easymotion'
  " Easy buffer
  Bundle 'troydm/easybuffer.vim'
  " CoffeScript
  Bundle 'vim-coffee-script'

  Bundle 'Lokaltog/vim-powerline'
  " Microblogging FTW
  Bundle 'TwitVim'
" }}}

" General {{{

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
  set lazyredraw

  " Window {{{
    set splitbelow            " Split current window below
    set splitright            " Split current window right
    set title
  " }}}

  " Files 'n Stuff {{{
    set undolevels=1000       " Do ALL THE undo's!
    set undoreload=10000      " Maximum number lines to save for undo on a buffer reload
  " }}}
" }}}

" GUI {{{

  set guioptions-=T           " Set off menubar
  set t_Co=256                " Set count of terminal colors
  colorscheme badwolf
  set foldenable
  "Highlight group for later matching
  highlight NonBreakingSpace guibg=re

  " Commandline {{{
    set showcmd
    set showmode                " Show current mode on commandline
    set cursorline              " Highlight cursorline!
    set ruler                   " Always show current position
    set cmdheight=3             " The commandline height
  " }}}

  " Statusline {{{
    set laststatus=2                          " Windows always will have a status line
    set statusline=%<%f\                      " Filename
    set statusline+=%w%h%m%r                  " Options
    set statusline+=\ [%{&ff}/%Y]             " Filetype
    set statusline+=\ [%{getcwd()}]           " Current directory
    set statusline+=\ %{fugitive#statusline()}
    set statusline+=%=%-14.(%l,%c%V%)\ %p%%   " Right aligned file nav info
  " }}}

  set backspace=indent,eol,start  " Backspace for dummies?
  set relativenumber
  set showmatch                   " Show matching brackets (Damn this is so cool!)
  set matchtime=3

  " Searching {{{
    set incsearch
    set hlsearch
    set ignorecase                " Case insensitive search
    set smartcase                 " Case sensitive when uc present
  " }}}

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

  " Formatting {{{
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
  " }}}

  " Sounds {{{
    set noerrorbells
    set visualbell
    set t_vb=
  " }}}

" }}}

" Key mappings {{{
  let mapleader = ',' " Change mapleader
  " Open up .vimrc quickly in a new buffer
  nnoremap  <leader>ev :vsp $MYVIMRC<cr>
  " And resource it as fast as light
  nnoremap  <leader>sv :source $MYVIMRC<cr>

  " Disabling arrow keys in normal and insert mode
  nnoremap  <up> <nop>
  nnoremap  <down> <nop>
  nnoremap  <left> <nop>
  nnoremap  <right> <nop>
  inoremap  <up> <nop>
  inoremap  <down> <nop>
  inoremap  <left> <nop>
  inoremap  <right> <nop>

  " Ex-mode is shitty
  nnoremap  Q <nop>

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

  " Search for non breaking spaces (ascii 160) Thank you Stø!
  nnoremap <leader>hw :/\%xa0<cr>

  " Using CAPS LOCK instead of CTRL to switch between windows
  nnoremap <C-h> <C-w>h
  nnoremap <C-j> <C-w>j
  nnoremap <C-k> <C-w>k
  nnoremap <C-l> <C-w>l

  " Vundle Key mappings
  nnoremap <leader>bi :BundleInstall<cr>
  nnoremap <leader>bi! :BundleInstall!<cr>
  nnoremap <leader>bl :BundleList<cr>
  nnoremap <leader>bc :BundleClean<cr>
  nnoremap <leader>bs :BundleSearch<space>

  " Fugitive Key mappings
  nnoremap <leader>gs :Gstatus<cr>
  nnoremap <leader>gl :Gllog --graph --abbrev-commit --pretty=oneline<cr>
  nnoremap <leader>ls :EasyBuffer<cr>

  nnoremap <leader>nm :NyanMe<cr>

  nnoremap <Space> za
  vnoremap <Space> za

  nnoremap <leader>tl :FriendsTwitter<cr>
" }}}


" Autocommands {{{
  augroup test
    au BufEnter * :match NonBreakingSpace /\%xa0/
  augroup END

  augroup file_type
    au BufEnter,BufNewFile,BufRead *.ejs set filetype=html
    au BufEnter,BufNewFile,BufRead *.less set filetype=css
  augroup END

  augroup boilerplate_autoload
    au BufNewFile *.html 0r ~/.vim/boilerplates/html.html
    au BufNewFile jquery.*.js 0r ~/.vim/boilerplates/jquery.plugin.js
  augroup END

  augroup trailing
    au!
    au InsertEnter * :set listchars-=nbsp:¬,eol:¶,tab:>-,extends:»,precedes:«,trail:•
    au InsertLeave * :set listchars+=nbsp:¬,eol:¶,tab:>-,extends:»,precedes:«,trail:•
  augroup END

  " Vimscript file settings {{{
  augroup filetype_vim
      autocmd!
      autocmd FileType vim setlocal foldmethod=marker
  augroup END
  " }}}
" }}}

" Abbreviations {{{
  iabbrev iff if () {}jk bb i

  iabbrev ldis ಠ_ಠ
  iabbrev lsad ಥ_ಥ
  iabbrev lhap ಥ‿ಥ
  iabbrev lmis ಠ‿ಠ
" }}}

" Functions {{{
    function! NyanMe() " {{{
        hi NyanFur             guifg=#BBBBBB
        hi NyanPoptartEdge     guifg=#ffd0ac
        hi NyanPoptartFrosting guifg=#fd3699 guibg=#fe98ff
        hi NyanRainbow1        guifg=#6831f8
        hi NyanRainbow2        guifg=#0099fc
        hi NyanRainbow3        guifg=#3cfa04
        hi NyanRainbow4        guifg=#fdfe00
        hi NyanRainbow5        guifg=#fc9d00
        hi NyanRainbow6        guifg=#fe0000


        echohl NyanRainbow1
        echon "≈"
        echohl NyanRainbow2
        echon "≋"
        echohl NyanRainbow3
        echon "≈"
        echohl NyanRainbow4
        echon "≋"
        echohl NyanRainbow5
        echon "≈"
        echohl NyanRainbow6
        echon "≋"
        echohl NyanRainbow1
        echon "≈"
        echohl NyanRainbow2
        echon "≋"
        echohl NyanRainbow3
        echon "≈"
        echohl NyanRainbow4
        echon "≋"
        echohl NyanRainbow5
        echon "≈"
        echohl NyanRainbow6
        echon "≋"
        echohl None
        echo ""

        echohl NyanRainbow1
        echon "≈"
        echohl NyanRainbow2
        echon "≋"
        echohl NyanRainbow3
        echon "≈"
        echohl NyanRainbow4
        echon "≋"
        echohl NyanRainbow5
        echon "≈"
        echohl NyanRainbow6
        echon "≋"
        echohl NyanRainbow1
        echon "≈"
        echohl NyanRainbow2
        echon "≋"
        echohl NyanRainbow3
        echon "≈"
        echohl NyanRainbow4
        echon "≋"
        echohl NyanRainbow5
        echon "≈"
        echohl NyanRainbow6
        echon "≋"
        echohl NyanFur
        echon "╰"
        echohl NyanPoptartEdge
        echon "⟨"
        echohl NyanPoptartFrosting
        echon "⣮⣯⡿"
        echohl NyanPoptartEdge
        echon "⟩"
        echohl NyanFur
        echon "⩾^ω^⩽"
        echohl None
        echo ""

        echohl NyanRainbow1
        echon "≈"
        echohl NyanRainbow2
        echon "≋"
        echohl NyanRainbow3
        echon "≈"
        echohl NyanRainbow4
        echon "≋"
        echohl NyanRainbow5
        echon "≈"
        echohl NyanRainbow6
        echon "≋"
        echohl NyanRainbow1
        echon "≈"
        echohl NyanRainbow2
        echon "≋"
        echohl NyanRainbow3
        echon "≈"
        echohl NyanRainbow4
        echon "≋"
        echohl NyanRainbow5
        echon "≈"
        echohl NyanRainbow6
        echon "≋"
        echohl None
        echon " "
        echohl NyanFur
        echon "”   ‟"
        echohl None

        sleep 2
        echo " "
        redraw
        echo " "
        echo " "
        echo "Noms?"
        redraw
    endfunction 
    command! NyanMe call NyanMe()
    " }}}
" }}}

let g:Powerline_symbols = 'compatible'

source $HOME/.vim/credentials.vim

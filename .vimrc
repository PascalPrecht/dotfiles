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

" Vars ----------------- {{{

  let $JS_CMD = 'node'
  let mapleader = ','
  let maplocalleader = ','

" }}}

 " Basic Settings ----------------- {{{

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

 " }}}

 " Vundle startup ----------------- {{{

   filetype off

   set rtp+=~/.vim/bundle/vundle/
   call vundle#rc()

 " }}}

 " Bundles ----------------- {{{

   " Vundle
   Bundle 'gmarik/vundle'

   " CoffeeScript support
   Bundle 'kchmck/vim-coffee-script'

   " .editorconfig
   Bundle 'editorconfig/editorconfig-vim'

   "Bundle 'bling/vim-airline'

   Bundle 'itchyny/lightline.vim'

   " Vim-like navigation between vim and tmux
   Bundle 'christoomey/vim-tmux-navigator'

   " Re-enable filetype plugin indent
   filetype plugin indent on

 " }}}

 " GUI ----------------- {{{

   " General ----------------- {{{

     set guioptions-=TlrLR                             " Turn off menubar and scollbars
     set t_Co=256                                      " Terminal colors count

      if &term =~ '256color'
        " Disable Background Color Erase (BCE) so that color schemes
        " work properly when Vim is used inside tmux and GNU screen.
        " See also http://snk.tuxfamily.org/log/vim-256color-bce.html
        set t_ut=
      endif

     colorscheme badwolf
     syntax on                                         " Enable syntax highlighting

     "set list                                          " Display unprintable chars

     set relativenumber
     set scrolljump=5                                  " Minimal number of screen lines to scroll
     set scrolloff=3                                   " Minimal number of screen lines to keep above and below

   " }}}

   " Wildmenu ----------------- {{{

     set wildmenu                                      " Enable wild menu
     set wildmode=list:longest,full
     set wildignore+=.git,.svn                         " Version control
     set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg    " binary images
     set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest  " compiled object files
     set wildignore+=*.sw?                             " Vim swap files
     set wildignore+=*.DS_Store                        " OSX bullshit

   " }}}

   " Search ----------------- {{{

     set showmatch                                     " Show matching brackets (Damn this is so cool!)
     set matchtime=3

     set incsearch
     set hlsearch
     set ignorecase                                    " Case insensitive search
     set smartcase                                     " Case sensitive when uc present

   " }}}

   " Statusline ----------------- {{{
   "
   " Nothing to see here yet, using Statline plugin currently.
   "
   " }}}

   " Commandline ----------------- {{{

     set showcmd
     set showmode                                      " Show current mode on commandline
     set cmdheight=3                                   " The commandline height
     set shortmess+=filmnrxoOtT                        " Short messaging in commandline
     set laststatus=2                                  " Windows always will have a status line

   " }}}

   " Cursor/Ruler ----------------- {{{

     set cursorline                                    " Highlight cursorline!
     set ruler                                         " Always show current position
     set colorcolumn=81
     set virtualedit=onemore                           " Allow for cursor beyond last character

   " }}}

   " Text ----------------- {{{

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

   " }}}

   " Sound ----------------- {{{

     set noerrorbells
     set visualbell
     set t_vb=

   " }}}

   " Windows/Splits ----------------- {{{

     set splitbelow                                    " Split current window below
     set splitright                                    " Split current window right
     set title
     "set lines=999                                     " Open the tallest window possible
     "set columns=9999                                  " Open the widest window possible

   " }}}

 " }}}

 " Plugins ----------------- {{{

   " Vundle ----------------- {{{

     nnoremap <leader>bi :BundleInstall<cr>
     nnoremap <leader>bi! :BundleInstall!<cr>
     nnoremap <leader>bl :BundleList<cr>
     nnoremap <leader>bc :BundleClean<cr>
     nnoremap <leader>bs :BundleSearch<space>

   " }}}

   " Statline ----------------- {{{

    let g:statline_no_encoding_string = '[???]'
    let g:statline_filename_relative = 1
    let g:statline_show_charcode = 1

   " }}}

   " Airline ----------------- {{{

    "let g:airline_theme = 'luna'
    "let g:airline_detect_paste = 1
    "let g:airline_powerline_fonts = 1

   " }}}

   " CtrlP ----------------- {{{

    let g:ctrlp_map = '<leader>f'
    let g:ctrlp_show_hidden = 1
    let g:ctrl_max_height = 30
    let g:ctrl_working_path_mode = 0
    let g:ctrl_match_window_reversed = 0

   " }}}

   " snipMate ----------------- {{{

    let g:snippets_dir = '~/.vim/bundle/snipmate.vim/snippets'

   " }}}
 " }}}

 " Mappings ----------------- {{{

   " Shortcuts ----------------- {{{

     " Open up .vimrc quickly in a new buffer
     nnoremap  <leader>ev :vsp $MYVIMRC<cr>
     " Source .vimrc explitly
     nnoremap  <leader>sv :source $MYVIMRC<cr>
     " Nyan!
     nnoremap <leader>nm :NyanMe<cr>

   " }}}

   " General ----------------- {{{

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

   " }}}

   " Movement ----------------- {{{

     " Disabling arrow keys in normal and insert mode
     nnoremap  <up> <nop>
     nnoremap  <down> <nop>
     nnoremap  <left> <nop>
     nnoremap  <right> <nop>
     inoremap  <up> <nop>
     inoremap  <down> <nop>
     inoremap  <left> <nop>
     inoremap  <right> <nop>

     nnoremap j gj
     nnoremap k gk
     nnoremap ; :

     " Stronger h and l
     nnoremap H 0
     nnoremap L $

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

   " }}}

   " Search ----------------- {{{

     " Search for non breaking spaces (ascii 160) Thank you Stø!
     nnoremap <leader>hw :/\%xa0<cr>

     " Keep search pattern at the center of the screen
     nnoremap <silent> n nzz
     nnoremap <silent> N Nzz
     nnoremap <silent> * *zz
     nnoremap <silent> # #zz
     nnoremap <silent> g* g*zz
     nnoremap <silent> g# g#zz

   " }}}

   " Windows/Splits ----------------- {{{

     " Use just CTRL instead of CTRL-W to switch between windows
     nnoremap <C-h> <C-w>h
     nnoremap <C-j> <C-w>j
     nnoremap <C-k> <C-w>k
     nnoremap <C-l> <C-w>l

   " }}}

   " Operator Pending ------------ {{{

     " in next parens
     onoremap in( :<c-u>normal! f(vi(<cr>
     " on a function name in the current line
     onoremap F :<c-u>normal! 0f(hviw<cr>

   " }}}

 " }}}

 " Autocommands --------------- {{{

   " General --------------- {{{

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

     augroup number_mode_switch
       au!
       autocmd InsertEnter * set number
       autocmd InsertLeave * set relativenumber
     augroup END

   " }}}

   " Filetypes --------------- {{{

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

   " }}}

   " Windows/Splits --------------- {{{


   " }}}

 " }}}

 " Abbreviations --------------- {{{

 " }}}

 " Functions --------------- {{{

   function! NyanMe()
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

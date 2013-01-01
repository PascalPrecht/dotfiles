set guioptions-=T           " Set off menubar
set t_Co=256                " Set count of terminal colors
colorscheme badwolf

highlight NonBreakingSpace guibg=red

" Wildmenu
set wildmenu                                      " Enable wild menu
set wildmode=list:longest,full
set wildignore+=.git,.svn                         " Version control
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg    " binary images
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest  " compiled object files
set wildignore+=*.sw?                             " Vim swap files
set wildignore+=*.DS_Store                        " OSX bullshit

set relativenumber

syntax on                   " Enable syntax highlighting

set scrolljump=5
set scrolloff=3
set list

set showmatch                   " Show matching brackets (Damn this is so cool!)
set matchtime=3

" Searching
set incsearch
set hlsearch
set ignorecase                " Case insensitive search
set smartcase                 " Case sensitive when uc present

" Commandline
set showcmd
set showmode                " Show current mode on commandline
set cursorline              " Highlight cursorline!
set ruler                   " Always show current position
set cmdheight=3             " The commandline height
set shortmess+=filmnrxoOtT  " Short messaging in commandline

" Statusline
set laststatus=2                          " Windows always will have a status line
set statusline=%<%f\                      " Filename
set statusline+=%w%h%m%r                  " Options
set statusline+=\ [%{&ff}/%Y]             " Filetype
set statusline+=\ [%{getcwd()}]           " Current directory
set statusline+=\ %{fugitive#statusline()}
set statusline+=%=%-14.(%l,%c%V%)\ %p%%   " Right aligned file nav info

" Folding
set foldlevelstart=0
set foldenable

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

" Window {{{
  set splitbelow            " Split current window below
  set splitright            " Split current window right
  set title
  set lines=999               " Open the tallest window possible
  set columns=9999            " Open the widest window possible
" }}}
set virtualedit=onemore     " Allow for cursor beyond last character

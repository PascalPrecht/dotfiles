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

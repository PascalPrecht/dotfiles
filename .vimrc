source $HOME/.vim/lib/env.vim
source $HOME/.vim/lib/bundles.vim
filetype plugin indent on
source $HOME/.vim/lib/gui.vim


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

  " Numbersssss
  nnoremap <leader>nn :NumbersToggle<cr>

  " Really, you can do all these things shorter!
  nnoremap $a :echo "Dude, 'A' is your friend!"<cr>
" }}}

" Autocommands {{{
  augroup highlight_nbsp
    au!
    au BufEnter * :match NonBreakingSpace /\%xa0/
  augroup END

  augroup file_type
    au!
    au BufEnter,BufNewFile,BufRead *.ejs set filetype=html
    au BufEnter,BufNewFile,BufRead *.less set filetype=css
  augroup END

  augroup boilerplate_autoload
    au!
    au BufNewFile *.html 0r ~/.vim/lib/boilerplates/html.html
    au BufNewFile jquery.*.js 0r ~/.vim/lib/boilerplates/jquery.plugin.js
  augroup END

  augroup trailing
    au!
    au InsertEnter * :set listchars-=nbsp:¬,eol:¶,tab:>-,extends:»,precedes:«,trail:•
    au InsertLeave * :set listchars+=nbsp:¬,eol:¶,tab:>-,extends:»,precedes:«,trail:•
  augroup END

  " Vimscript file settings {{{
  augroup filetype_vim
    au!
    au FileType vim setlocal foldmethod=marker
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

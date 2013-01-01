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

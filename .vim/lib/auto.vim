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

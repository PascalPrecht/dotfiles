set background=dark

if !has("gui_running") && &t_Co != 88 && &t_Co != 256
    finish
endif

hi clear

if exists("syntax-on")
  syntax reset
endif

let g:colors_name = "chelevra"

hi Normal guifg=#f5f2f1 guibg=#2d2d2d
hi Visual guifg= guibg=
hi Cursor guifg=#f5f2f1 guibg=#91E1FB

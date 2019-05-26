execute pathogen#infect()
execute pathogen#helptags()

syntax on

filetype plugin indent on

:color desert

highlight String ctermfg=LightGray
highlight Comment ctermfg=LightGray

set number
set tabstop=2 softtabstop=2 expandtab shiftwidth=2 smarttab splitright

set clipboard=unnamed

let g:javascript_plugin_jsdoc = 1

let g:user_emmet_settings = {
\  'indentation':'    ',
\  'html':{
\    'indentation':'    ',
\  },
\  'javascript':{
\    'indentation':'  ',
\  }
\}

let g:netrw_liststyle = 3
let g:netrw_banner = 0


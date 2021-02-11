
" Load Dein ------------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/alex/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/home/alex/.cache/dein')
  call dein#begin('/home/alex/.cache/dein')

  " Let dein manage dein
  " Required:
  call dein#add('/home/alex/.cache/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here like this:
  call dein#add('lervag/vimtex')
  call dein#add('jsit/toast.vim')
  call dein#add('xuhdev/vim-latex-live-preview')
  call dein#add('sirver/ultisnips')
  call dein#add('vim-airline/vim-airline')
  call dein#add('vim-airline/vim-airline-themes')
  call dein#add('vhda/verilog_systemverilog.vim')
  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

" End dein Scripts------------------------

" Random QoL------------------------------

" More natural splits
set splitbelow          " Horizontal split below current.
set splitright          " Vertical split to right of current.

" Random Flags
set showmatch           " Show matching brackets.
set number              " Show the line numbers on the left side.
set relativenumber
set formatoptions+=o    " Continue comment marker in new lines.
set expandtab           " Insert spaces when TAB is pressed.
set tabstop=4           " Render TABs using this many spaces.
set shiftwidth=4        " Indentation amount for < and > commands.
set nojoinspaces        " Prevents inserting two spaces after punctuation on a join (J)
set wildmenu
set mouse=a

" Vimtex
let g:tex_flavor='latex'
let g:vimtex_view_general_viewer = 'evince'
let g:vimtex_quickfix_mode=0
let g:vimtex_compiler_method='latexmk'
let g:vimtex_compiler_progname = 'nvr'
set conceallevel=1
let g:tex_conceal='abdmg'
autocmd Filetype tex autocmd InsertLeave <buffer> write

" Python
let g:python_host_prog = '/usr/bin/python'
let g:python3_host_prog = '/usr/bin/python3'

" Bindings--------------------------------

" Dvorak!
" set langmap='q,\\,w,pr,yt,fy,ro,lp,=],aa,os,ed,dh,hj,tk,nl,s\\;,-',\\;z,jc,kv,mm,w\\,,[-,]=,\"Q,<W,>E,PR,YT,FY,CI,RO,LP,?{,+},AA,OS,ED,IG,DH,HJ,TK,NL,_\",QX,JC,KV,XB,BN,MM,W<,V>,Z?

" Other Stuff!
let mapleader=" "
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

" Colors :)
colorscheme toast
set background=light
let g:airline_theme='base16'
let g:airline_powerline_fonts = 1
let g:airline_skip_empty_sections = 1

hi clear Conceal

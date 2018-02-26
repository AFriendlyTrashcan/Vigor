set langmap='q,\\,w,pr,yt,fy,ro,lp,=],aa,os,ed,dh,hj,tk,nl,s\\;,-',\\;z,jc,kv,mm,w\\,,[-,]=,\"Q,<W,>E,PR,YT,FY,GU,,CI,RO,LP,?{,+},AA,OS,ED,UF,IG,DH,HJ,TK,NL,_\",QX,JC,KV,XB,BN,MM,W<,V>,Z?
set showmatch           " Show matching brackets.
set number              " Show the line numbers on the left side.
set formatoptions+=o    " Continue comment marker in new lines.
set expandtab           " Insert spaces when TAB is pressed.
set tabstop=4           " Render TABs using this many spaces.
set shiftwidth=4        " Indentation amount for < and > commands.
set nojoinspaces        " Prevents inserting two spaces after punctuation on a join (J)
set wildmenu
set mouse=a

autocmd FileType * nested :call tagbar#autoopen() 
let g:tagbar_autofocus = 0
let g:tagbar_compact = 1                           

autocmd vimenter * NERDTree

let g:airline_powerline_fonts = 1

au TermOpen * setlocal nonumber norelativenumber

" More natural splits
set splitbelow          " Horizontal split below current.
set splitright          " Vertical split to right of current.

if !&scrolloff
	set scrolloff=3       " Show next 3 lines while scrolling.
endif
if !&sidescrolloff
	set sidescrolloff=5   " Show next 5 columns while side-scrolling.
endif
set nostartofline       " Do not jump to first character with page commands.

let mapleader=" "

"Bindings
map <leader>t :TagbarToggle<CR>
map <leader>f :NERDTreeToggle<CR>
map <leader>c :noh<CR>

"Neobundle 
if 0 | endif

if &compatible
  set nocompatible               " Be iMproved
endif

set runtimepath+=~/.vim/bundle/neobundle.vim/

call neobundle#begin(expand('~/.vim/bundle/'))
    NeoBundleFetch 'Shougo/neobundle.vim'
    "Plugins go here
    NeoBundle 'majutsushi/tagbar'
    NeoBundle 'scrooloose/nerdtree'
    NeoBundle 'Xuyuanp/nerdtree-git-plugin'
    NeoBundle 'vim-airline/vim-airline'
call neobundle#end()

filetype plugin indent on

NeoBundleCheck

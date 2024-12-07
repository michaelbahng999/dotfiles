
" -- buffer --
set hidden
set lazyredraw
set ttyfast

" -- history --
set history=999
set undolevels=999
set autoread

" -- backup --
set noswapfile
set nobackup
set nowritebackup

" -- search --
set gdefault
set magic
set hlsearch
set incsearch
set ignorecase smartcase

" -- indentation --
set expandtab                   " Expand tabs to spaces
set autoindent smartindent      " auto/smart indent
set copyindent                  " copy previous indentation on auto indent
set wrap                        " wrap lines
set textwidth=120

" -- UI --
set t_Co=256                " 256 colors terminal
set cursorline              " Highlight current line
set number
set title                   " Show the filename in the window title bar.

syntax enable
filetype plugin indent on

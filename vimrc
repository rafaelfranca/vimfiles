" Set vim-specific functions available, breaking compatibility with vi
set nocompatible

" Line Number
set number

" Syntax highlighting options
syntax on
set t_Co=256

" Search Options
set incsearch
set hlsearch

" Line Wrapping options
set nowrap

" Disable visual bells
set visualbell t_vb=

" Statusline setup
set statusline=%f
set laststatus=2

" Indentation Settings
set sw=2
set sts=2
set expandtab
set autoindent

" Folding Settings
set nofoldenable

" Command Line Completion
set wildmode=list:longest
set wildmenu
set wildignore=*.o,*.obj,*.swp,*~,#*#

" Display tabs and trailing spaces
set list
set listchars=tab:\ ¬,trail:.

" Enabling mouse
set mouse=a

" Necessary on some Linux distros for pathogen to properly load bundles
filetype off

" Set vim-specific functions available, breaking compatibility with vi
set nocompatible

source ~/.vim/vundle.vim

" Line Number
set number
set colorcolumn=120
set synmaxcol=200

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

set laststatus=2

" Indentation Settings
set sw=2
set sts=2
set expandtab
set autoindent

" Loading indent and plugins depending on the filetype
filetype plugin on
filetype indent on

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

" Allow backgrounding buffers without writing them, and remember marks/undo
" for backgrounded buffers
set hidden
set switchbuf=useopen

" Store temporary files in a central spot
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

" Abbreviations to keep me from going insane
iab lenght length
iab widht width
iab heigth height
cab W w
cab Q q
cab Wq wq
cab WQ wq
cab qw wq
cab X x

" Loading the other files from the repository
source ~/.vim/keymaps.vim

" Loading macvim config
if has("gui_mac") || has("gui_macvim")
  source ~/.vim/macvim.vim
endif

" Removing trailing spaces from ruby files (by @bbcoimbra)
function! RemoveTraillingSpaces()
  let cursor_pos = getpos(".")
  %s/[ \t]*$//g
  call setpos(".", cursor_pos)
endfunction

function! CustomFoldText()
  let foldsize = (v:foldend-v:foldstart)
  return getline(v:foldstart).' ('.foldsize.' lines)'
endfunction
setlocal foldtext=CustomFoldText()

augroup gitrebase
  autocmd FileType gitrebase command -range RebasePick <line1>,<line2>s/^\w\+ /pick /
  autocmd FileType gitrebase command -range RebaseReword <line1>,<line2>s/^\w\+ /reword /
  autocmd FileType gitrebase command -range RebaseEdit <line1>,<line2>s/^\w\+ /edit /
  autocmd FileType gitrebase command -range RebaseSquash <line1>,<line2>s/^\w\+ /squash /
  autocmd FileType gitrebase command -range RebaseFixup <line1>,<line2>s/^\w\+ /fixup /
  autocmd FileType gitrebase command -range RebaseExec <line1>,<line2>s/^\w\+ /exec /
  autocmd FileType gitrebase command -range RebaseDrop <line1>,<line2>s/^\w\+ /drop /
  autocmd FileType gitrebase map rp :RebasePick<CR>
  autocmd FileType gitrebase map rr :RebaseReword<CR>
  autocmd FileType gitrebase map re :RebaseEdit<CR>
  autocmd FileType gitrebase map rs :RebaseSquash<CR>
  autocmd FileType gitrebase map rf :RebaseFixup<CR>
  autocmd FileType gitrebase map rx :RebaseExec<CR>
  autocmd FileType gitrebase map rd :RebaseDrop<CR>
augroup END

augroup format_ruby
  autocmd Syntax ruby syn region sorbetSig start='sig {' end='}'
  autocmd Syntax ruby hi def link sorbetSig Comment
  autocmd Syntax ruby syn region sorbetSigDo start='sig do' end='end'
  autocmd Syntax ruby hi def link sorbetSigDo Comment
augroup END

source ~/.vim/plugins.vim

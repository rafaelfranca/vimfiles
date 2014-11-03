" Necessary on some Linux distros for pathogen to properly load bundles
filetype off

" Load all Pathogen Bundles
call pathogen#infect()

" Set vim-specific functions available, breaking compatibility with vi
set nocompatible

" Line Number
set number
set colorcolumn=100

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
set statusline=%f " Filename
set statusline+=%m " Modified status
set statusline+=%#error#
set statusline+=%{StatuslineTrailingSpaceWarning()}
set statusline+=%{GitEmailAlert()}
set statusline+=%*
set statusline+=%y\  " Filetype
set statusline+=%c, " Cursor Column
set statusline+=%l/%L " Cursor Line/Total Lines

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

"recalculate the trailing whitespace warning when idle, and after saving
autocmd cursorhold,bufwritepost * unlet! b:statusline_trailing_space_warning

"return '[\s]' if trailing white space is detected
"return '' otherwise
function! StatuslineTrailingSpaceWarning()
  if !exists("b:statusline_trailing_space_warning")
    if !&modifiable
      let b:statusline_trailing_space_warning = ''
      return b:statusline_trailing_space_warning
    endif

    if search('\s\+$', 'nw') != 0
      let b:statusline_trailing_space_warning = '[\s]'
    else
      let b:statusline_trailing_space_warning = ''
    endif
  endif

  return b:statusline_trailing_space_warning
endfunction

" Removing trailing spaces from ruby files (by @bbcoimbra)
function! RemoveTraillingSpaces()
  let cursor_pos = getpos(".")
  %s/[ \t]*$//g
  call setpos(".", cursor_pos)
endfunction

" Alert if the local git email is not set
function! GitEmailAlert()
  if !exists("g:gitemail_alert")
    let s:email = system("git config --local --get user.email")

    if s:email == ''
      let g:gitemail_alert = '[Configure git local email]'
    else
      let g:gitemail_alert = ''
    endif
  endif

  return g:gitemail_alert
endfunction

function! CustomFoldText()
  let foldsize = (v:foldend-v:foldstart)
  return getline(v:foldstart).' ('.foldsize.' lines)'
endfunction
setlocal foldtext=CustomFoldText()

source ~/.vim/plugins.vim

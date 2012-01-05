" Snipmate setup
source ~/.vim/snippets/support_functions.vim

" Ragtag setup
let g:ragtag_global_maps = 1

" Syntastic configuration
let g:syntastic_enable_signs=1

" Delete fugitive buffers when it is hidded
autocmd BufReadPost fugitive://* set bufhidden=delete

" CtrlP configuration
set wildignore+=*/.hg/*,*/.svn/*,*.so,*/b/*
let g:ctrlp_custom_ignore = '\.git/*\|vendor/ruby/*'

" gist
let g:gist_detect_filetype = 1
let g:gist_open_browser_after_post = 1

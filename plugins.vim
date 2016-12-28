" Snipmate setup
source ~/.vim/snippets/support_functions.vim

" Ragtag setup
let g:ragtag_global_maps = 1

" Delete fugitive buffers when it is hidded
autocmd BufReadPost fugitive://* set bufhidden=delete

" CtrlP configuration
set wildignore+=*/.hg/*,*/.svn/*,*.so,*/b/*
let g:ctrlp_custom_ignore = '\.git/*\|vendor/ruby/*'
let g:ctrlp_dotfiles = 0

" gist
let g:gist_detect_filetype = 1
let g:gist_open_browser_after_post = 1

" vim-ruby
let ruby_operators = 1
let ruby_space_errors = 1
let ruby_fold = 1

" Neomake
autocmd! BufWritePost,BufEnter * Neomake
let g:neomake_open_list = 2

" ack
let g:ackprg = "ag --vimgrep"

" tags
let g:vim_tags_use_vim_dispatch = 0

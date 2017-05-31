" Ragtag setup
let g:ragtag_global_maps = 1

" Delete fugitive buffers when it is hidded
autocmd BufReadPost fugitive://* set bufhidden=delete

" Fzf configuration
set wildignore+=*/.hg/*,*/.svn/*,*.so,*/b/*

" gist
let g:gist_detect_filetype = 1
let g:gist_open_browser_after_post = 1

" vim-ruby
let ruby_operators = 1
let ruby_space_errors = 1
let ruby_fold = 1

" Neomake
autocmd! BufWritePost,BufEnter * Neomake
function! neomake#makers#ft#ruby#rubocop()
    let path = getcwd() . '.rubocop.yml'
    let exepath = getcwd() . '/bin/rubocop'

    if filereadable(path)
      let args = ['--format', 'emacs', '--config', path]
    else
      let args = ['--format', 'emacs']
    endif

    if filereadable(exepath)
      let exe = exepath
    else
      let exe = 'rubocop'
    endif

    return {
        \ 'exe': exe,
        \ 'args': args,
        \ 'errorformat': '%f:%l:%c: %t: %m',
        \ 'postprocess': function('neomake#makers#ft#ruby#RubocopEntryProcess')
        \ }
endfunction

" ack
let g:ackprg = "ag --vimgrep"

" tags
let g:vim_tags_use_vim_dispatch = 0

" Snippets
let g:tm_rails_template_end_ruby_inline = ' -%>'


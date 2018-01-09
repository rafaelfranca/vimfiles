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
" let ruby_operators = 1 " this option is bugged
let ruby_space_errors = 1
" let ruby_fold = 1 " this option make everything slow

" Neomake
call neomake#configure#automake('w')

let g:neomake_ruby_enabled_makers = ['mri', 'rubocop', 'reek']
let rubocop_exepath = getcwd() . '/bin/rubocop'

if filereadable(rubocop_exepath)
  let g:neomake_ruby_rubocop_exe = rubocop_exepath
endif

let rubocop_config = getcwd() . '.rubocop.yml'

if filereadable(rubocop_config)
  let g:neomake_ruby_rubocop_args = ['--format', 'emacs', '--force-exclusion', '--display-cop-names', '--config', rubocop_config]
endif

" ack
let g:ackprg = "rg --vimgrep"

" tags
let g:vim_tags_use_vim_dispatch = 1
let g:vim_tags_auto_generate = 0

" Snippets
let g:tm_rails_template_end_ruby_inline = ' -%>'

"airline
let g:airline_highlighting_cache = 1

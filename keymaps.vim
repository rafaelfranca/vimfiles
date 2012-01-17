" Make Y yank the rest of the line (like with C and D)
nnoremap Y y$

" Moving Emacs-likey!
imap <C-f> <C-o>l
imap <C-b> <C-o>h
imap <C-n> <C-o>j
imap <C-p> <C-o>k
imap <C-a> <C-o>0
imap <C-e> <C-o>$

" Word substitution on insert mode
imap <C-w> <C-o>dw

" NERDTree!
nmap <silent> <C-e> :NERDTreeToggle<CR>

" BufferExplorer
nmap <silent> <C-b> :BufExplorer<CR>

" Key mapping for tab navigation
nmap <Tab> gt
nmap <S-Tab> gT

" Clearing search results
nmap <silent> <C-l> :nohl<CR>

" Tabularize shortcuts
nmap <Leader>th :Tabularize /=><CR>
vmap <Leader>th :Tabularize /=><CR>
nmap <Leader>t= :Tabularize /=<CR>
vmap <Leader>t= :Tabularize /=<CR>
nmap <Leader>t: :Tabularize /:\zs<CR>
vmap <Leader>t: :Tabularize /:\zs<CR>
nmap <Leader>t, :Tabularize /,\zs<CR>
vmap <Leader>t, :Tabularize /,\zs<CR>

" Fugitive
nmap <silent> <F6> :Gstatus<CR>

" Whitespaces
nnoremap <silent> <F5> :call RemoveTraillingSpaces()<CR>
map <silent> <F4> mmgg=G'm
imap <silent> <F4> <Esc> mmgg=G'm

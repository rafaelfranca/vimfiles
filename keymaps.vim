" Make Y yank the rest of the line (like with C and D)
nnoremap Y y$

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
nnoremap <silent> <F3> :call RemoveTraillingSpaces()<CR>
map <silent> <F4> mmgg=G'm
imap <silent> <F4> <Esc> mmgg=G'm

" Spell
map <silent> <F7> :set spell!<CR>
imap <silent> <F7> <Esc> :set spell!<CR>

nnoremap <leader>. :CtrlPTag<CR>
nnoremap <leader>q :copen<CR>
nnoremap <leader>l :lopen<CR>

nnoremap <Space> <nop>
nnoremap [q :cprevious<CR>   " 前へ
nnoremap ]q :cnext<CR>       " 次へ
nnoremap [Q :<C-u>cfirst<CR> " 最初へ
nnoremap ]Q :<C-u>clast<CR>  " 最後へ
nnoremap s <Nop>
nnoremap s= <C-w>=
nnoremap so <C-w>_<C-w>|
nnoremap sO <C-w>=

nnoremap [e  :<c-u>execute 'move -1-'. v:count1<cr>
nnoremap ]e  :<c-u>execute 'move +'. v:count1<cr>

"switching tab
nnoremap sp :<C-u>tabnew<CR>
nnoremap ss gT

nnoremap sd :vertical diffsplit
nnoremap sv :<C-u>vs<CR>
nnoremap sq :<C-u>q<CR>
nnoremap sQ :<C-u>bd<CR>
inoremap <C-A> <Home>
inoremap <C-E> <End>
inoremap <C-F> <Right>
inoremap <C-B> <Left>
nnoremap ; :
nnoremap : ;
vnoremap ; :
vnoremap : ;
inoremap <Space>h <Esc>
vnoremap <Space>h <Esc>
nnoremap ZQ <Nop>

nnoremap color :<C-u>Unite colorscheme -auto-preview<CR>

autocmd FileType scheme nnoremap <Space>s :!gosh -l %:p<CR>
autocmd FileType scheme nnoremap <Space>g :GoshREPL <CR>

" ペースト
nnoremap <silent><C-p> "*p

" emmetのキーバインド変更
let g:user_emmet_leader_key=','

" dvorak
" up
nnoremap t k
vnoremap t k
nnoremap k t
vnoremap k t
" down
nnoremap m j
vnoremap m j
nnoremap j m
vnoremap j m
"right
nnoremap l e
vnoremap l e
nnoremap e l
vnoremap e l
"left
nnoremap h b
nnoremap b h



"switching window
nnoremap sh <C-w>h
nnoremap sm <C-w>j
nnoremap st <C-w>k
nnoremap sl <C-w>l


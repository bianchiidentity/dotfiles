nnoremap <Space> <nop>
nnoremap [q :cprevious<CR>   " 前へ
nnoremap ]q :cnext<CR>       " 次へ
nnoremap [Q :<C-u>cfirst<CR> " 最初へ
nnoremap ]Q :<C-u>clast<CR>  " 最後へ
nnoremap s <Nop>
nnoremap s= <C-w>=
nnoremap so <C-w>_<C-w>|
nnoremap sO <C-w>=
nnoremap sp :<C-u>tabnew<CR>
nnoremap sd :vertical diffsplit
nnoremap ss :<C-u>sp<CR>
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
inoremap hh <Esc>
vnoremap hh <Esc>
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
" down
nnoremap m j
vnoremap m j
"right
nnoremap l w
vnoremap l w
"left
nnoremap h b

"switching tab
nnoremap sh <C-w>h
nnoremap sm <C-w>j
nnoremap st <C-w>k
nnoremap sl <C-w>l

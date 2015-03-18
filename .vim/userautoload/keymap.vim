nnoremap <Space> <nop>
nnoremap [q :cprevious<CR>   " 前へ
nnoremap ]q :cnext<CR>       " 次へ
nnoremap [Q :<C-u>cfirst<CR> " 最初へ
nnoremap ]Q :<C-u>clast<CR>  " 最後へ
nnoremap s <Nop>
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h
nnoremap sJ <C-w>J
nnoremap sK <C-w>K
nnoremap sL <C-w>L
nnoremap sH <C-w>H
nnoremap sr <C-w>r
nnoremap s= <C-w>=
nnoremap so <C-w>_<C-w>|
nnoremap sO <C-w>=
nnoremap sN :<C-u>bn<CR>
nnoremap sP :<C-u>bp<CR>
nnoremap st :<C-u>tabnew<CR>
nnoremap sd :vertical diffsplit
nnoremap ss :<C-u>sp<CR>
nnoremap sv :<C-u>vs<CR>
nnoremap sq :<C-u>q<CR>
nnoremap sQ :<C-u>bd<CR>
inoremap <C-A> <Home>
inoremap <C-E> <End>
inoremap <C-F> <Right>
inoremap <C-B> <Left>
inoremap <C-D> <Del>
nnoremap ; :
nnoremap : ;
vnoremap ; :
vnoremap : ;
inoremap jk  <Esc>
vnoremap ;; <Esc>

nnoremap <silent> tt  :<C-u>tabe<CR>
nnoremap ZQ <Nop>

nnoremap color :<C-u>Unite colorscheme -auto-preview<CR>

nnoremap <Space>h <Home>
nnoremap <Space>l <End>

" ペースト
nnoremap <silent><C-p> "*p

" emmetのキーバインド変更
" let g:user_emmet_leader_key=','

noremap <Space>h  ^
noremap <Space>l  $
nnoremap <Space>/  *
noremap <Space>m  %

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
nnoremap sw <C-w>w
nnoremap so <C-w>_<C-w>|
nnoremap sO <C-w>=
nnoremap sN :<C-u>bn<CR>
nnoremap sP :<C-u>bp<CR>
nnoremap st :<C-u>tabnew<CR>
nnoremap ss :<C-u>sp<CR>
nnoremap sv :<C-u>vs<CR>
nnoremap sq :<C-u>q<CR>
nnoremap sQ :<C-u>bd<CR>
nnoremap ; :
nnoremap : ;
vnoremap ; :
vnoremap : ;
inoremap jk  <Esc>

nnoremap <silent> tt  :<C-u>tabe<CR>

nnoremap tp :<C-u>PosttoTwitter<CR>
nnoremap tr :<C-u>FriendsTwitter<CR><C-w>j
nnoremap tu :<C-u>UserTwitter<CR><C-w>j
nnoremap tR :<C-u>RepliesTwitter<CR><C-w>j
nnoremap tn :<C-u>NextTwitter<CR>

let g:user_emmet_leader_key='<c-t>'


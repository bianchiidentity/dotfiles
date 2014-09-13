filetype plugin indent on

syntax on
set nowrap

set hlsearch
set ignorecase
set smartcase
set encoding=utf-8
set autoindent

set ruler
set number
set list
set listchars=tab:▸\.,trail:▸\,eol:↲,extends:>,precedes:<,nbsp:%
set wildmenu
set showcmd

set shiftwidth=2
set softtabstop=2
set expandtab
set tabstop=2
set smarttab

set clipboard=unnamed

set mouse=a
"タブを表示するようにする
" インサートモードの時に C-j でノーマルモードに戻る
imap <C-j> <esc>
" [ って打ったら [] って入力されてしかも括弧の中にいる(以下同様)
imap [ []<left>
imap ( ()<left>
imap { {}<left>
"-- KeyMap -----------------------
"" insertモードでhjkl移動を利用する
imap <c-h> <Left>
imap <c-j> <Down>
imap <c-k> <Up>
imap <c-l> <Right>
nmap <F9> :NERDTree<Enter>
nmap <F10> :NERDTreeClose<Enter>




nnoremap [q :cprevious<CR>   " 前へ
nnoremap ]q :cnext<CR>       " 次へ
nnoremap [Q :<C-u>cfirst<CR> " 最初へ
nnoremap ]Q :<C-u>clast<CR>  " 最後へ]]
nnoremap s <Nop>
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h
nnoremap sJ <C-w>J
nnoremap sK <C-w>K
nnoremap sL <C-w>L
nnoremap sH <C-w>H
nnoremap sn gt
nnoremap sp gT
nnoremap sr <C-w>r
nnoremap s= <C-w>=
nnoremap sw <C-w>w
nnoremap so <C-w>_<C-w>|
nnoremap sO <C-w>=
nnoremap sN :<C-u>bn<CR>
nnoremap sP :<C-u>bp<CR>
nnoremap st :<C-u>tabnew<CR>
nnoremap sT :<C-u>Unite tab<CR>
nnoremap ss :<C-u>sp<CR>
nnoremap sv :<C-u>vs<CR>
nnoremap sq :<C-u>q<CR>
nnoremap sQ :<C-u>bd<CR>
nnoremap sb :<C-u>Unite buffer_tab -buffer-name=file<CR>
nnoremap sB :<C-u>Unite buffer -buffer-name=file<CR>
nnoremap ; :
nnoremap : ;
nnoremap <Space>h ^
nnoremap <Space>l $



"call submode#enter_with('bufmove', 'n', '', 's>', '<C-w>>')
"call submode#enter_with('bufmove', 'n', '', 's<', '<C-w><')
"call submode#enter_with('bufmove', 'n', '', 's+', '<C-w>+')
"call submode#enter_with('bufmove', 'n', '', 's-', '<C-w>-')
"call submode#map('bufmove', 'n', '', '>', '<C-w>>')
"call submode#map('bufmove', 'n', '', '<', '<C-w><')
"call submode#map('bufmove', 'n', '', '+', '<C-w>+')
"call submode#map('bufmove', 'n', '', '-', '<C-w>-')
" ２回esc を押したら検索のハイライトをヤメる
nmap <Esc><Esc> :nohlsearch<CR><Esc>

colorscheme molokai

"隠しファイルをデフォルトで表示させる
 let NERDTreeShowHidden = 1
  
  " デフォルトでツリーを表示させる
autocmd VimEnter * execute 'NERDTree'

set laststatus=2
set t_Co=256
"----------------------------------------------------------------------"
"---------------------------
"Start Neobundle Settings.
"---------------------------
" bundleで管理するディレクトリを指定
set runtimepath+=~/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" neobundle自体をneobundleで管理
NeoBundleFetch 'Shougo/neobundle.vim'
" NERDTreeを設定(左にディレクトリツリーを表示させるプラグイン))
NeoBundle 'scrooloose/nerdtree'
"カラースキーム一覧表示にUnite.vimを使う
NeoBundle 'Shougo/unite.vim'
NeoBundle 'ujihisa/unite-colorscheme'
"Emmet (HTML)
NeoBundle 'mattn/emmet-vim'
"シンタックスチェック
NeoBundle 'scrooloose/syntastic'
"サイズ変更のためのsubmode
NeoBundle 'kana/vim-submode'
" molokai カラースキーム
NeoBundle 'tomasr/molokai'
NeoBundle 'vim-scripts/chlordane.vim'
" ステータスラインをおしゃれにする
NeoBundle 'itchyny/lightline.vim'
call neobundle#end()

" Required:
filetype plugin indent on

"未インストールのプラグインがある場合、インストールするかどうかを尋ねてくれるようにする設定
" 毎回聞かれると邪魔な場合もあるので、この設定は任意です。
NeoBundleCheck

"-------------------------
" End Neobundle Settings.
"-------------------------)))
"--------------------------------- NERDTree -----------------------------------------------------------------
"" 引数なしで実行したとき、NERDTreeを実行する
let file_name = expand("%:p")
if has('vim_starting') &&  file_name == ""
  autocmd VimEnter * call ExecuteNERDTree()
endif
" カーソルが外れているときは自動的にnerdtreeを隠す
function! ExecuteNERDTree()
 "b:nerdstatus = 1 : NERDTree 表示中
 "b:nerdstatus = 2 : NERDTree 非表示中

  if !exists('g:nerdstatus')
   execute 'NERDTree ./'
     let g:windowWidth = winwidth(winnr())
     let g:nerdtreebuf = bufnr('')
     let g:nerdstatus = 1 

   elseif g:nerdstatus == 1 
     execute 'wincmdt'
     execute 'vertical resize'0 
     execute 'wincmd p'
     let g:nerdstatus = 2 
   elseif g:nerdstatus == 2 
     execute 'wincmd t'
     execute'vertical resize'g:windowWidth
     let g:nerdstatus = 1 

   endif
 endfunction
noremap <Space>e call ExecuteNERDTree()



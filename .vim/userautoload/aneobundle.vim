" Required:
set runtimepath+=~/dotfiles/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" neobundle自体をneobundleで管理
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/vimproc.vim'
NeoBundle 'Shougo/neocomplete.vim'          " 補完
NeoBundle 'Shougo/neosnippet.vim'           " 補完
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'Shougo/neomru.vim'
NeoBundle 'Shougo/vimfiler'

" NeoBundle 'scrooloose/nerdtree'             " NERDTreeを設定(左にディレクトリツリーを表示させるプラグイン))
" NeoBundle 'ujihisa/unite-colorscheme'       " カラースキーム一覧表示にUnite.vimを使う
" NeoBundle 'mattn/emmet-vim'                 " Emmet (HTML)
"NeoBundle 'mattn/gist-vim'                  " vimから手軽にgist投稿
NeoBundle 'scrooloose/syntastic'            " シンタックスチェック
NeoBundle 'kana/vim-submode'                " サイズ変更のためのsubmode
NeoBundle 'itchyny/lightline.vim'           " ステータスラインをおしゃれにする
NeoBundle 'rails.vim'                       " 対応するモデル・ビュー・コントローラ間を簡単に行き来できる
NeoBundle 'taku-o/vim-toggle'               " +でtrue <-> falseなどをtoggle
NeoBundle 'tpope/vim-surround.git'          " 括弧を効率的に編集
NeoBundle "tyru/caw.vim.git"                " コメントアウト　gci /c
NeoBundle 'errormarker.vim'                 " :make でエラーになった行を目立たせる
NeoBundle 'Align'                           " テキストの整形
NeoBundle 'grep.vim'

NeoBundle 'tpope/vim-endwise'               " 対になる文字を自動で書き出してくれる
NeoBundle 'basyura/unite-rails'             " :Unite rails/<Tab>で、Unite上にviews/controllersなどを一覧表示させる事が出来る
" NeoBundle 'davidhalter/jedi-vim'            " python用
NeoBundle 'Yggdroot/indentLine'             " インデントの視覚化 
NeoBundle 'vim-scripts/ansiesc.vim'         " ログファイルを色づけしてくれる
" NeoBundle 'taka84u9/vim-ref-ri'             " リファレンス読める
NeoBundle 'thinca/vim-quickrun'             " コードをファイルに保存せずに実行する事が出来る
NeoBundle 'jiangmiao/auto-pairs'            " {}とか自動で’入れてくれる
NeoBundle 'alpaca-tc/alpaca_tags'           " ctagsの自動生成
NeoBundle 'tpope/vim-fugitive'              " vim git wrapper plugin

" NeoBundle 'hail2u/vim-css3-syntax'
" NeoBundle 'pangloss/vim-javascript'
" NeoBundle 'othree/html5.vim'
" NeoBundle 'AtsushiM/search-parent.vim'
" NeoBundle 'AtsushiM/sass-compile.vim'
" NeoBundle 'kchmck/vim-coffee-script'        " syntax + 自動compile
" NeoBundle 'slim-template/vim-slim'          "slim記法

"-------------------Haskell------------------------- 
" NeoBundle 'dag/vim2hs'
" NeoBundle 'eagletmt/ghcmod-vim'
" NeoBundle 'ujihisa/neco-ghc'
" NeoBundle 'osyo-manga/vim-watchdogs'
" NeoBundle 'kana/vim-filetype-haskell'

" --------------------Lisp---------------------------
" NeoBundle 'slimv.vim'
" NeoBundle 'aharisu/vim_goshrepl'
"
" NeoBundle 'Twitvim'                         " vimでtwitter


NeoBundle 'tomasr/molokai'                   " molokai カラースキーム
" NeoBundle 'vim-scripts/chlordane.vim'        " 緑色のかっこいいカラースキーム
NeoBundle 'altercation/vim-colors-solarized' " solarized カラースキーム
" NeoBundle 'croaker/mustang-vim'              " mustang カラースキーム
NeoBundle 'jeffreyiacono/vim-colors-wombat'  " wombat カラースキーム
NeoBundle 'nanotech/jellybeans.vim'          " jellybeans カラースキーム
" NeoBundle 'vim-scripts/Lucius'               " lucius カラースキーム
" NeoBundle 'vim-scripts/Zenburn'              " zenburn カラースキーム
" NeoBundle 'mrkn/mrkn256.vim'                 " mrkn256 カラースキーム
" NeoBundle 'jpo/vim-railscasts-theme'         " railscasts カラースキーム
" NeoBundle 'therubymug/vim-pyte'              " pyte カラースキーム

call neobundle#end()

" Required:
filetype plugin indent on

"未インストールのプラグインがある場合、インストールするかどうかを尋ねてくれるようにする設定
NeoBundleCheck

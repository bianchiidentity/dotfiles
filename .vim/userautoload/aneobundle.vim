" Required:
set runtimepath+=~/dotfiles/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" neobundle自体をneobundleで管理
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neocomplete'
NeoBundle 'Shougo/neosnippet.vim'           " 補完
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'Shougo/neomru.vim'
NeoBundle 'Shougo/vimfiler'

" NeoBundle 'ujihisa/unite-colorscheme'       " カラースキーム一覧表示にUnite.vimを使う
NeoBundle 'scrooloose/syntastic'            " シンタックスチェック
NeoBundle 'kana/vim-submode'                " サイズ変更のためのsubmode
NeoBundle 'itchyny/lightline.vim'           " ステータスラインをおしゃれにする
" NeoBundle 'taku-o/vim-toggle'               " +でtrue <-> falseなどをtoggle
NeoBundle 'tpope/vim-surround.git'          " 括弧を効率的に編集
NeoBundle "tyru/caw.vim.git"                " コメントアウト　gci /c
" NeoBundle 'errormarker.vim'                 " :make でエラーになった行を目立たせる
NeoBundle 'junegunn/vim-easy-align'           " テキストの整形
" NeoBundle 'Align'                           " テキストの整形
NeoBundle 'grep.vim'
NeoBundle 'tpope/vim-endwise'               " 対になる文字を自動で書き出してくれる
NeoBundle 'thinca/vim-quickrun'             " コードをファイルに保存せずに実行する事が出来る
NeoBundle 'jiangmiao/auto-pairs'            " {}とか自動で’入れてくれる
NeoBundle 'tpope/vim-fugitive'              " vim git wrapper plugin
NeoBundle 'rhysd/clever-f.vim'              " カーソル移動
" NeoBundle 'tell-k/vim-autopep8'             " autopep8
" NeoBundle 'vim-scripts/vim-auto-save'       " オートセーブ
NeoBundle 'soramugi/auto-ctags.vim'

" NeoBundle 'scrooloose/nerdtree'             " NERDTreeを設定(左にディレクトリツリーを表示させるプラグイン))
NeoBundle 'mattn/emmet-vim'                 " Emmet (HTML)
" NeoBundle 'rails.vim'                       " 対応するモデル・ビュー・コントローラ間を簡単に行き来できる

" NeoBundle 'basyura/unite-rails'             " :Unite rails/<Tab>で、Unite上にviews/controllersなどを一覧表示させる事が出来る
" NeoBundle 'davidhalter/jedi-vim'            " python用
" NeoBundle 'Yggdroot/indentLine'             " インデントの視覚化 
" NeoBundle 'vim-scripts/ansiesc.vim'         " ログファイルを色づけしてくれる
NeoBundle 'thinca/vim-ref'                    " リファレンス読める

NeoBundle 'tomasr/molokai'                   " molokai カラースキーム
" NeoBundle 'vim-scripts/chlordane.vim'        " 緑色のかっこいいカラースキーム
NeoBundle 'altercation/vim-colors-solarized' " solarized カラースキーム
" NeoBundle 'jeffreyiacono/vim-colors-wombat'  " wombat カラースキーム
" NeoBundle 'nanotech/jellybeans.vim'          " jellybeans カラースキーム

call neobundle#end()

" Required:
filetype plugin indent on

"未インストールのプラグインがある場合、インストールするかどうかを尋ねてくれるようにする設定
NeoBundleCheck

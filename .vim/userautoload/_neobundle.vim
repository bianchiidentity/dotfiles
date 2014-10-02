" Required:
set runtimepath+=~/dotfiles/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" neobundle自体をneobundleで管理
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/vimproc'
NeoBundle 'Shougo/neocomplete.vim'         " 補完
NeoBundle 'Shougo/neosnippet.vim'          " 補完

NeoBundle 'scrooloose/nerdtree'            " NERDTreeを設定(左にディレクトリツリーを表示させるプラグイン))
NeoBundle 'ujihisa/unite-colorscheme'      " カラースキーム一覧表示にUnite.vimを使う
NeoBundle 'mattn/emmet-vim'                " Emmet (HTML)
NeoBundle 'scrooloose/syntastic'           " シンタックスチェック
NeoBundle 'kana/vim-submode'               " サイズ変更のためのsubmode
NeoBundle 'itchyny/lightline.vim'          " ステータスラインをおしゃれにする
NeoBundle 'rails.vim'                      " 対応するモデル・ビュー・コントローラ間を簡単に行き来できるらしい
NeoBundle 'sudo.vim'                       " :w sudo:% で管理者権限保存ができる
NeoBundle 'taku-o/vim-toggle'              " +でtrue <-> falseなどをtoggle
NeoBundle 'tpope/vim-surround.git'         " 括弧を効率的に編集
NeoBundle "tyru/caw.vim.git"               " コメントアウト　gci /c
NeoBundle 'errormarker.vim'                " :make でエラーになった行を目立たせる
NeoBundle 'Align'                          " テキストの整形
NeoBundle 'tpope/vim-endwise'              " 対になる文字を自動で書き出してくれる
NeoBundle 'basyura/unite-rails'            " :Unite rails/<Tab>で、Unite上にviews/controllersなどを一覧表示させる事が出来る
NeoBundle 'davidhalter/jedi-vim'           " python用

NeoBundle 'tomasr/molokai'                 " molokai カラースキーム
NeoBundle 'vim-scripts/chlordane.vim'      " 緑色のかっこいいカラースキーム

call neobundle#end()

" Required:
filetype plugin indent on

"未インストールのプラグインがある場合、インストールするかどうかを尋ねてくれるようにする設定
NeoBundleCheck

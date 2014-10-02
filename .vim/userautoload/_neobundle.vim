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

NeoBundle 'scrooloose/nerdtree'            " NERDTreeを設定(左にディレクトリツリーを表示させるプラグイン))
NeoBundle 'ujihisa/unite-colorscheme'      " カラースキーム一覧表示にUnite.vimを使う
NeoBundle 'mattn/emmet-vim'                " Emmet (HTML)
NeoBundle 'scrooloose/syntastic'           " シンタックスチェック
NeoBundle 'kana/vim-submode'               " サイズ変更のためのsubmode
NeoBundle 'itchyny/lightline.vim'          " ステータスラインをおしゃれにする
NeoBundle 'rails.vim'                      " 対応するモデル・ビュー・コントローラ間を簡単に行き来できるらしい
NeoBundle 'sudo.vim'

NeoBundle 'tomasr/molokai'                 " molokai カラースキーム
NeoBundle 'vim-scripts/chlordane.vim'      " 緑色のかっこいいカラースキーム

call neobundle#end()

" Required:
filetype plugin indent on

"未インストールのプラグインがある場合、インストールするかどうかを尋ねてくれるようにする設定
NeoBundleCheck


bundle Settings.↲
"---------------------------↲
" bundleで管理するディレクトリを指定↲
"---------------------------↲
" Required:
set runtimepath+=~/.vim/bundle/neobundle.vim/↲
endif
↲
" Required:↲
call neobundle#begin(expand('~/.vim/bundle/'))↲
↲
" neobundle自体をneobundleで管理↲
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'↲
" NERDTreeを設定(左にディレクトリツリーを表示させるプラグイン))↲
NeoBundle 'scrooloose/nerdtree'↲
"カラースキーム一覧表示にUnite.vimを使う↲
NeoBundle 'Shougo/unite.vim'↲
NeoBundle 'ujihisa/unite-colorscheme'↲
"Emmet (HTML)↲
NeoBundle 'mattn/emmet-vim'↲
"シンタックスチェック↲
NeoBundle 'scrooloose/syntastic'↲
"サイズ変更のためのsubmode↲
NeoBundle 'kana/vim-submode'↲
" molokai カラースキーム↲
NeoBundle 'tomasr/molokai'↲
NeoBundle 'vim-scripts/chlordane.vim'↲
" ステータスラインをおしゃれにする↲
NeoBundle 'itchyny/lightline.vim'↲
call neobundle#end()↲
↲
" Required:↲
filetype plugin indent on↲
↲
"未インストールのプラグインがある場合、インストールするかどうかを尋ねてくれるようにする設定↲
" 毎回聞かれると邪魔な場合もあるので、この設定は任意です。↲
NeoBundleCheck↲
↲
"-------------------------↲
" End Neobundle Settings.↲
"-------------------------↲

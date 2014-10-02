let $PATH = "~/.pyenv/shims:".$PATH

" ... neobundle.vim 初期化等
"
" " DJANGO_SETTINGS_MODULE を自動設定
NeoBundleLazy "lambdalisue/vim-django-support", {
      \ "autoload": {
      \   "filetypes": ["python", "python3", "djangohtml"]
      \ }}

" pyenv 処理用に vim-pyenv を追加
" Note: depends が指定されているため jedi-vim
より後にロードされる（ことを期待）
NeoBundleLazy "lambdalisue/vim-pyenv", {
      \ "depends": ['davidhalter/jedi-vim'],
      \ "autoload": {
      \   "filetypes": ["python", "python3", "djangohtml"]
      \ }}

" ... neobundle.vim 終了処理等

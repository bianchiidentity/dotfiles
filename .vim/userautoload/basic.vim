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
set smarttab      "タブを表示するようにする  
set noswapfile    " スワップファイルは使わない

" 最後のカーソル位置を復元する
if has("autocmd")
  autocmd BufReadPost *
    \ if line("'\"") > 0 && line ("'\"") <= line("$") |
    \   exe "normal! g'\"" |
    \ endif
endif

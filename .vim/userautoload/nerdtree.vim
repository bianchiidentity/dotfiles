"NERDTree ---------------------------------------------------->
"隠しファイルをデフォルトで表示させる
let NERDTreeShowHidden = 1
" デフォルトでツリーを表示させる
autocmd VimEnter * execute 'NERDTree'

nmap <F9> :NERDTree<Enter>
nmap <F10> :NERDTreeClose<Enter>

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
noremap <Space>e call ExecuteNERDTree();

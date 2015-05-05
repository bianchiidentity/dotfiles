" function! s:generate_lisp_tags()
"   let g:slimv_ctags =  'ctags -a -f '.$HOME.'/.vim/tags/lisp.tags '.expand('%:p').' --language-force=Lisp'
"   call SlimvGenerateTags()
" endfunction
" command! -nargs=0 GenerateLispTags call <SID>generate_lisp_tags()
"
" function! s:generate_lisp_tags_recursive()
"   let g:slimv_ctags =  'ctags -a -f '.$HOME.'/.vim/tags/lisp.tags -R '.expand('%:p:h').' --language-force=Lisp'
"   call SlimvGenerateTags()
" endfunction
" command! -nargs=0 GenerateLispTagsRecursive call <SID>generate_lisp_tags_recursive()
"
" let g:slimv_repl_split = 4
" let g:slimv_repl_name = 'REPL'
" let g:slimv_repl_simple_eval = 0
" let g:slimv_lisp = '/usr/local/bin/clisp'
" let g:slimv_impl = 'clisp'
" let g:slimv_preferred = 'clisp'
" let g:slimv_swank_cmd = '!osascript -e "tell application \"Terminal\" to do script \"clisp '.$HOME.'/.vim/bundle/slimv/slime/start-swank.lisp\""'
"
" let g:lisp_rainbow=1
"
"
" autocmd BufNewFile,BufRead *.asd   set filetype=lisp
"     endfunction
"   endfunction

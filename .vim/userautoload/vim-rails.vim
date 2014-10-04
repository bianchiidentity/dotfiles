"有効化
let g:rails_default_file='config/database.yml'
let g:rails_level = 4
let g:rails_mappings=1
let g:rails_modelines=0
" let g:rails_some_option = 1
"let g:rails_statusline = 1
" let g:rails_subversion=0
" let g:rails_syntax = 1
" let g:rails_url='http://localhost:3000'
" let g:rails_ctags_arguments='--languages=-javascript'
" let g:rails_ctags_arguments = ''
function! SetUpRailsSetting()
  nnoremap sr :R<CR>
  nnoremap sa :A<CR>
  nnoremap sm :Rmodel<Space>
  nnoremap sc :Rcontroller<Space>
  nnoremap sv :Rview<Space>
  nnoremap sp :Rpreview<CR>
endfunction

aug MyAutoCmd
  au User Rails call SetUpRailsSetting()
aug END

aug RailsDictSetting
  au!
aug END

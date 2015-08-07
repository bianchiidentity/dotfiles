NeoBundleLazy 'alpaca-tc/alpaca_tags', {
              \    'depends': ['Shougo/vimproc'],
              \    'autoload' : {
              \       'commands' : [
              \          { 'name' : 'AlpacaTagsBundle', 'complete': 'customlist,alpaca_tags#complete_source' },
              \          { 'name' : 'AlpacaTagsUpdate', 'complete': 'customlist,alpaca_tags#complete_source' },
              \          'AlpacaTagsSet', 'AlpacaTagsCleanCache', 'AlpacaTagsEnable', 'AlpacaTagsDisable', 'AlpacaTagsKillProcess', 'AlpacaTagsProcessStatus',
              \       ],
              \    }
              \ }

let g:alpaca_tags#config = {
                       \    '_' : '-R --sort=yes',
                       \    'ruby': '--languages=+Ruby',
                       \ }


augroup AlpacaTags
  autocmd!
  if exists(':AlpacaTags')
    autocmd BufWritePost Gemfile AlpacaTagsBundle
    autocmd BufEnter * AlpacaTagsSet
    autocmd BufWritePost * AlpacaTagsUpdate
  endif
augroup END

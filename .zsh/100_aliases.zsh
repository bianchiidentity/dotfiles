alias v='vim'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ht='ls'
alias htt='ls -lta'
alias htg='ls|grep'
alias xa='xargs -I {}'

alias st='git status --short --branch'
alias gd='git difftool --tool=vimdiff --no-prompt'
alias cm='git commit -m'
alias ga='git add'
alias di='git diff'
alias dih='git diff HEAD'
alias dic='git diff --cached'
alias gg='git grep -e'

alias buill= "bundle install --path=vendor/bundle --binstubs=vendor/bin"
alias gosh='rlwrap gosh'
alias phantomjs='phantomjs --proxy='http://192.168.14.101:3128' --proxy-auth='2013048:4GJrRBWg''
alias brew="env PATH=${PATH//Users/kawasakikou/.pyenv/shims:/} brew"
alias tn='trans {ja=en}'

# Emacs ライクな操作を有効にする（文字入力中に Ctrl-F,B でカーソル移動など）
# Vi ライクな操作が好みであれば `bindkey -v` とする
bindkey -e
# cd progra
# ls
# export https_proxy=http://2013048:4GJrRBWg@192.168.14.101:3128
# export http_proxy=http://2013048:4GJrRBWg@192.168.14.101:3128
export CLICOLOR=1
export LSCOLORS=DxGxcxdxCxegedabagacad
export RAILS_DATABASE_USERNAME=railsuser
export RAILS_DATABASE_PASSWORD=railspass
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH" 
export PATH="~/.rbenv/plugins:$PATH" 

export DOCKER_HOST=tcp://192.168.59.103:2375
unset DOCKER_CERT_PATH
unset DOCKER_TLS_VERIFY

# 自動補完を有効にする
# コマンドの引数やパス名を途中まで入力して <Tab> を押すといい感じに補完してくれる
# 例： `cd path/to/<Tab>`, `ls -<Tab>`
autoload -U compinit; compinit

# 入力したコマンドが存在せず、かつディレクトリ名と一致するなら、ディレクトリに cd する
# 例： /usr/bin と入力すると /usr/bin ディレクトリに移動
# ↓を設定すると、 .. とだけ入力したら1つ上のディレクトリに移動できるので……
# 2つ上、3つ上にも移動できるようにする
setopt auto_cd

# 大文字小文字を無視して補完
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# コマンド履歴を600000まで保存する
HISTFILE=~/.zsh_history
HISTSIZE=600000
SAVEHIST=600000
setopt hist_ignore_dups     # 同じ履歴を重複して保存しない
setopt share_history        # 全ウィンドウでhistoryをshareする　

# 履歴検索機能のショートカット設定
# Ctrl-PとCtrl-Nに割り当てられ、複数行の編集には↓↑←→を使うといった風にすみわけができる。
autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^P" history-beginning-search-backward-end
bindkey "^N" history-beginning-search-forward-end


alias ...='cd ../..'
alias ....='cd ../../..'
alias pull='git pull'
alias push='git push'
alias st='git status'
alias stt='git status -uno'
alias gitdiff='git difftool --tool=vimdiff --no-prompt'
alias v='vim'
alias cm='git commit -m'
alias gita='git add'
alias di='git diff'
alias dih='git diff HEAD'
alias dic='git diff --cached'
alias lst='ls -lta'
alias chorome="open -a Google\ Chrome "
alias lsg='ls|grep'
alias xa='xargs -I {}'
alias bundleinstall= "bundle install --path=vendor/bundle --binstubs=vendor/bin"
alias buill= "bundle install --path=vendor/bundle"
alias gosh='rlwrap gosh'
alias phantomjs='phantomjs --proxy='http://192.168.14.101:3128' --proxy-auth='2013048:4GJrRBWg''


alias brew="env PATH=${PATH//Users/kawasakikou/.pyenv/shims:/} brew"
# "~hoge" が特定のパス名に展開されるようにする（ブックマークのようなもの）
# 例： cd ~hoge と入力すると /long/path/to/hogehoge ディレクトリに移動
hash -d hoge=/long/path/to/hogehoge
hash -d rails=~/Desktop/rails_projects
hash -d prog=~/Desktop/programing1

# cd した先のディレクトリをディレクトリスタックに追加する
# ディレクトリスタックとは今までに行ったディレクトリの履歴のこと
# `cd +<Tab>` でディレクトリの履歴が表示され、そこに移動できる
setopt auto_pushd

# pushd したとき、ディレクトリがすでにスタックに含まれていればスタックに追加しない
setopt pushd_ignore_dups

# 拡張 glob を有効にする
# glob とはパス名にマッチするワイルドカードパターンのこと
# （たとえば `mv hoge.* ~/dir` における "*"）
# 拡張 glob を有効にすると # ~ ^ もパターンとして扱われる
# どういう意味を持つかは `man zshexpn` の FILENAME GENERATION を参照
setopt extended_glob

# 入力したコマンドがすでにコマンド履歴に含まれる場合、履歴から古いほうのコマンドを削除する
# コマンド履歴とは今まで入力したコマンドの一覧のことで、上下キーでたどれる
setopt hist_ignore_all_dups

# コマンドがスペースで始まる場合、コマンド履歴に追加しない
# 例： <Space>echo hello と入力
setopt hist_ignore_space

# <Tab> でパス名の補完候補を表示したあと、
# 続けて <Tab> を押すと候補からパス名を選択できるようになる
# 候補を選ぶには <Tab> か Ctrl-N,B,F,P
zstyle ':completion:*:default' menu select=1

# 単語の一部として扱われる文字のセットを指定する
# ここではデフォルトのセットから / を抜いたものとする
# こうすると、 Ctrl-W でカーソル前の1単語を削除したとき、 / までで削除が止まる

# カレントディレクトリのフルパスを表示する
# precmd () {
  # echo -ne "\e]2;${PWD}\a"
  # echo -ne "\e]1;${PWD}\a"
# }

WORDCHARS='*?_-.[]~=&;!#$%^(){}<>'

autoload -Uz VCS_INFO_get_data_git; VCS_INFO_get_data_git 2> /dev/null

function rprompt-git-current-branch {
        local name st color gitdir action
        if [[ "$PWD" =~ '/\.git(/.*)?$' ]]; then
                return
        fi

        name=`git rev-parse --abbrev-ref=loose HEAD 2> /dev/null`
        if [[ -z $name ]]; then
                return
        fi

        gitdir=`git rev-parse --git-dir 2> /dev/null`
        action=`VCS_INFO_git_getaction "$gitdir"` && action="($action)"

  if [[ -e "$gitdir/rprompt-nostatus" ]]; then
    echo "$name$action "
    return
  fi

        st=`git status 2> /dev/null`
  if [[ -n `echo "$st" | grep "^nothing to"` ]]; then
    color=%F{green}
  elif [[ -n `echo "$st" | grep "^nothing added"` ]]; then
    color=%F{yellow}
  elif [[ -n `echo "$st" | grep "^# Untracked"` ]]; then
                color=%B%F{red}
        else
                color=%F{red}
        fi

        echo "$color$name$action%f%b "
}

# プロンプトが表示されるたびにプロンプト文字列を評価、置換する
setopt prompt_subst

RPROMPT='[`rprompt-git-current-branch`%~]'


export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init - zsh)"

export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Devel
source /usr/local/bin/virtualenvwrapper.sh

export PYENV_ROOT="${HOME}/.pyenv"
if [ -d "${PYENV_ROOT}" ]; then
    export PATH=${PYENV_ROOT}/bin:$PATH
    eval "$(pyenv init - zsh)"
fi
export PATH=/usr/local/sbin:$PATH

# Add GHC 7.8.3 to the PATH, via http://ghcformacosx.github.io/
export GHC_DOT_APP="/opt/homebrew-cask/Caskroom/ghc/7.8.3-r1/ghc-7.8.3.app"
if [ -d "$GHC_DOT_APP" ]; then
    export PATH="${HOME}/.cabal/bin:${GHC_DOT_APP}/Contents/bin:${PATH}"
fi

# zsh-completions
if [ -e /usr/local/share/zsh-completions  ]; then
    fpath=(/usr/local/share/zsh-completions $fpath)
fi

# rbenv binstubs setting
export PATH=./vendor/bin:$PATH
alias be='bundle exec'

# C-kで下のディレクトリに移動する
function cddown_dir(){
com='$SHELL -c "ls -AF . | grep / "'
while [ $? = 0 ]
do
    cdir=`eval $com | peco`
    if [ $? = 0 ];then
        cd $cdir
        eval $com
    else
        break
    fi
done
zle reset-prompt
}
zle -N cddown_dir
bindkey '^k' cddown_dir

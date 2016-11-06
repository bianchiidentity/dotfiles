# 自動補完を有効にする
autoload -U compinit; compinit

# 入力したコマンドが存在せず、かつディレクトリ名と一致するなら、ディレクトリに cd する
setopt auto_cd
cdpath=(.. ~ ~/progra/working_now)

# 大文字小文字を無視して補完
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# 履歴検索機能のショートカット設定
# Ctrl-PとCtrl-Nに割り当てられ、複数行の編集には↓↑←→を使うといった風にすみわけができる。
autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^P" history-beginning-search-backward-end
bindkey "^N" history-beginning-search-forward-end

# 拡張 glob を有効にする
# 'man zshexpn' の FILENAME GENERATION を参照
setopt extended_glob

# 入力したコマンドがすでにコマンド履歴に含まれる場合、履歴から古いほうのコマンドを削除する
setopt hist_ignore_all_dups

# コマンドがスペースで始まる場合、コマンド履歴に追加しない
setopt hist_ignore_space

# <Tab> でパス名の補完候補を表示したあと、
# 続けて <Tab> を押すと候補からパス名を選択できるようになる
# 候補を選ぶには <Tab> か Ctrl-N,B,F,P
zstyle ':completion:*:default' menu select=1

# lsコマンドの結果を色表示に
export CLICOLOR=1
export LSCOLORS=DxGxcxdxCxegedabagacad

# zsh-completions
if [ -e /usr/local/share/zsh-completions  ]; then
    fpath=(/usr/local/share/zsh-completions $fpath)
fi

# sphinx-apidoc の際に必要だったので追加
export LC_ALL='ja_JP.UTF-8'

export PAGER='vimpager'

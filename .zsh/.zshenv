path=(
$HOME/local/bin
$HOME/local/sbin
$HOME/bin
/sbin
/bin
/usr/local/sbin
/usr/local/bin
/usr/sbin
/usr/bin
$HOME/.rbenv/plugins
)

umask 022

# コマンド履歴を600000まで保存する
HISTSIZE=600000
SAVEHIST=600000
HISTFILE=~/.zsh_history
setopt hist_ignore_dups     # 同じ履歴を重複して保存しない
setopt share_history        # 全ウィンドウでhistoryをshareする　

#! vi is standard editor. (Debian Policy Manual)
export EDITOR=vi

WORDCHARS='*?_-.[]~=&;!#$%^(){}<>'

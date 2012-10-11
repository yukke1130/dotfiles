autoload colors
colors
# case ${UID} in
#   0)
#   PROMPT="%B%{${fg[red]}%}%/#%{${reset_color}%}%b "
#   PROMPT2="%B%{${fg[red]}%}%_#%{${reset_color}%}%b "
#   SPROMPT="%B%{${fg[red]}%}%r is correct? [n,y,a,e]:%{${reset_color}%}%b "
#   [ -n "${REMOTEHOST}${SSH_CONNECTION}" ] &&
#   PROMPT="%{${fg[cyan]}%}$(echo ${HOST%%.*} | tr '[a-z]' '[A-Z]') ${PROMPT}"
#   ;;
#   *)
#   PROMPT="%{${fg[red]}%}%/%%%{${reset_color}%} "
#   PROMPT2="%{${fg[red]}%}%_%%%{${reset_color}%} "
#   SPROMPT="%{${fg[red]}%}%r is correct? [n,y,a,e]:%{${reset_color}%} "
#   [ -n "${REMOTEHOST}${SSH_CONNECTION}" ] &&
#   PROMPT="%{${fg[cyan]}%}$(echo ${HOST%%.*} | tr '[a-z]' '[A-Z]') ${PROMPT}"
#   ;;
# esac

# autoload -Uz vcs_info
# zstyle ':vcs_info:*' formats '(%s)-[%b]'
# zstyle ':vcs_info:*' actionformats '(%s)-[%b|%a]'
# precmd () {
#   psvar=()
#   LANG=en_US.UTF-8 vcs_info
#   [[ -n "$vcs_info_msg_0_" ]] && psvar[1]="$vcs_info_msg_0_"
# }
# RPROMPT="%1(v|%F{green}%1v%f|)"


######################################################################## history
export HISTFILE=~/.zsh_history           # historyファイル
export HISTIGNORE=ls:history
export HISTSIZE=10000                    # ファイルサイズ
export HISTTIMEFORMAT='%Y-%m-%d %T '     # bashのhistory zshのfc -ifldで使用する時刻フォーマット
export SAVEHIST=10000                    # saveする量
setopt EXTENDED_HISTORY                  # zshの開始終了を記録
setopt extended_history                  # 履歴ファイルに時刻を記録
setopt hist_ignore_dups                  # 重複を記録しない
setopt hist_reduce_blanks                # スペース排除
setopt inc_append_history                # 履歴をインクリメンタルに追加
setopt share_history                     # 履歴ファイルを、全ターミナルで共有
autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^p" history-beginning-search-backward-end
bindkey "^n" history-beginning-search-forward-end
bindkey "\\ep" history-beginning-search-backward-end
bindkey "\\en" history-beginning-search-forward-end
# Command history configuration

######################################################################## basic
# autoload predict-on;predict-on                      # 先方予測機能
# setopt auto_cd                                      # 指定したコマンド名がなく、ディレクトリ名と一致した場合 cd する
# setopt correct                                      # コマンドの自動修正
#autoload -U compinit                                  # 強力な補完機能
autoload -U compinit  && compinit
#compinit -u                                           # 強力な補完機能
#compinit -i                                           # 強力な補完機能
setopt autopushd                                      # cd でTabを押すとdir list を表示
setopt brace_ccl                                      # {a-c} を a b c に展開する機能を使えるようにする
setopt complete_in_word                               # カーソル位置で補完する
setopt list_packed                                    # リストを詰めて表示
setopt list_types                                     # 補完一覧ファイル種別表示
setopt print_eight_bit                                # 日本語ファイル名を表示可能に
setopt pushd_ignore_dups                              # ディレクトリスタックに同じディレクトリを追加しないようになる
setopt transient_rprompt                              # コピペしやすいようにコマンド実行後は右プロンプトを消す。
setopt complete_aliases                               # aliased ls needs if file/dir completions work
setopt no_beep
setopt rm_star_wait                                   # ファイルの一括削除時に１０秒間停止する
setopt auto_pushd                                     # auto directory pushd that you can get dirs list by cd -[tab]
setopt noautoremoveslash                              #no remove postfix slash of command line
setopt nolistbeep                                     # no beep sound when complete list displayed
######################################################################## basic

## Keybind configuration
bindkey -e

## Completion configuration
fpath=(~/.zsh/functions/Completion ${fpath})
autoload -U compinit
compinit

[ -f ~/.zshrc.theme ] && source ~/.zshrc.alias
case "$TERM" in
    dumb | emacs)
        PROMPT="%m:%~> "
        unsetopt zle
        ;;
    *)
        #
        [ -f ~/.zshrc.theme ] && source ~/.zshrc.theme
        ;;










esac

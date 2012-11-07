## load user .zshrc configuration file
#
[ -f ~/.zshrc.mine ] && source ~/.zshrc

## Environment variable configuration
#
# LANG
#alias titanium="python /Library/Application\ Support/Titanium/mobilesdk/osx/1.7.3/titanium.py"#
export LANG=ja_JP.UTF-8
export PATH=/Applications/flex_3/bin:$PATH
export PATH=/Applications/AIR_SDK/bin:$PATH
export PATH=~/local/bin:$PATH
#MYSQL
export PATH=/Applications/swftools-0.8.1/src:$PATH
export SVN_EDITOR="vim"
# export PATH=/opt/local/bin:/opt/local/sbin/:$PATH
export MANPATH=/opt/local/man:$MANPATH
export PATH=/Users/hashimoto/src/phantomjs-1.7.0-macosx/bin:$PATH
export PATH=/usr/local/bin:/usr/local/bin:$PATH
export PATH=/opt/local/lib/mysql5/bin:$PATH
export PATH=/Applications/android-sdk-mac_86/tools:$PATH
export PATH=/Applications/android-sdk-mac_86/platform-tools:$PATH
export MERB_ENV=hashimoto
export MERB_4U_ROOT=~/Project/adlocal4u/
export NEARNEAR_ROOT=/Users/hashimoto/Project/nearnearRails/
export PATH=/opt/local/bin/:/opt/local/sbin/:/usr/local/mysql/bin/:$PATH


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


# scp保管
## Completion configuration
fpath=(~/.zsh/functions/Completion ${fpath})
autoload -U compinit
compinit


[ -f ~/.zshrc.theme ] && source ~/.zshrc.alias
[ -f ~/.zshrc.theme ] && source ~/.zshrc.theme
case "$TERM" in
    dumb | emacs)
        PROMPT="%m:%~> "
        unsetopt zle
        ;;
    *)
        #

        ;;
esac


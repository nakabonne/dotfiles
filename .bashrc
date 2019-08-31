if [ -f ~/.bashrc_local ] ; then
  . ~/.bashrc_local
fi

# enhancd
source $HOME/.ghq/github.com/b4b4r07/enhancd/init.sh
ENHANCD_FILTER=fzf; export ENHANCD_FILTER

# direnv
eval "$(direnv hook bash)"

# prompt 
function parse_git_branch {
    git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ [\1]/'
}
function promps {
    # 色は気分で変えたいかもしれないので変す宣言しておく
    #THEIP=$(hostname -i)
    local  BLUE="\[\e[1;34m\]"
    local  RED="\[\e[1;31m\]"
    local  GREEN="\[\e[1;32m\]"
    local  WHITE="\[\e[00m\]"
    local  GRAY="\[\e[1;37m\]"

    case $TERM in
        xterm*) TITLEBAR='\[\e]0;\W\007\]';;
        *)      TITLEBAR="";;
    esac
    local BASE="\u"
    PS1="${TITLEBAR}${GREEN}${BASE}${WHITE}: ${RED}\W${GRAY}\$(parse_git_branch)${BLUE}\${WHITE} \[\e[0m\]\n\\$ "
}
promps


# alias
alias vi='nvim'
alias g='git'
alias ls='ls -CFG'
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias lg='lazygit'
alias gci='golangci-lint run --enable-all --new-from-rev HEAD~ -D gochecknoinits -D gochecknoglobals'

# vi mode
#set -o vi
#bind '"jj":vi-movement-mode'

# Hook for desk activation
[ -n "$DESK_ENV" ] && source "$DESK_ENV" || true

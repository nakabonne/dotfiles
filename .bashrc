# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/nakabo/google-cloud-sdk/path.bash.inc' ]; then source '/Users/nakabo/google-cloud-sdk/path.bash.inc'; fi

# enhancd
source .ghq/github.com/b4b4r07/enhancd/init.sh
ENHANCD_FILTER=fzf; export ENHANCD_FILTER

# direnv
eval "$(direnv hook bash)"

# prompt 
PS1="\[\e[226m\e[32m\][\u: \W ]\[\e[0m\]\n\\$ "

# alias
alias vi='nvim'
alias g='git'
alias ls='ls -CF'

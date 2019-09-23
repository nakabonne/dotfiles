if [ -f ~/.bashrc ] ; then
  . ~/.bashrc
fi
if [ -f ~/.bash_local ] ; then
  . ~/.bash_local
fi

export PATH=/usr/local/bin:$PATH
export EDITOR=nvim

# go_lang
export PATH="/usr/local/go/bin:$PATH"
export PATH="$HOME/go/bin:$PATH"
export GOPATH="$HOME/go"

# python
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# ruby
export PATH=/usr/local/bin:$PATH
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# node
export PATH=$HOME/.nodebrew/current/bin:$PATH

# neovim
export XDG_CONFIG_HOME="$HOME/.config"
export ANYENV_ROOT="$HOME/.anyenv"
export PATH=$PATH:"$HOME/.anyenv/bin"
eval "$(anyenv init -)"

# openssl
export PATH=/usr/local/opt/openssl/bin:$PATH
export LD_LIBRARY_PATH=/usr/local/opt/openssl/lib:$LD_LIBRARY_PATH
export CPATH=/usr/local/opt/openssl/include:$LD_LIBRARY_PATH

# GCP
export PATH=$HOME/google-cloud-sdk/bin:$PATH
export CLOUDSDK_PYTHON=$(which python2)
#export PATH=/usr/local/opt/python/libexec/bin:$PATH

# save place for brew cask
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

# ls
export LSCOLORS=xbfxcxdxbxegedabagacad

# Add command to PROMPT_COMMAND (runs before each command)
# Makes sure ithe command is not already in PROMPT_COMMAND
addToPromptCommand() {
  export PROMPT_COMMAND="$1; $PROMPT_COMMAND";
}

# Set iTerm tab title to show current directory
if [ $ITERM_SESSION_ID ]; then
  addToPromptCommand 'echo -ne "\033];${PWD##*/}\007"'
fi

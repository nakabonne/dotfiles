#!/bin/bash

# brew
brew=("tmux" "pyenv" "ripgrep" "go" "fzf" "python3" "direnv" "hugo" "tree" "jq" "pt" "htop" "starship" "denisidoro/tools/navi" "hub" "golangci/tap/golangci-lint" "ghq" "jesseduffield/lazygit/lazygit" "bash-completion" "c-bata/kube-prompt/kube-prompt" "caskroom/fonts/fonts")
cask=("iterm2" "font-fira-code")
if type "brew"; then
  echo "$(tput setaf 2)Already installed Homebrew ✔︎$(tput sgr0)"
else
  echo "Installing Homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi
if type "tap"; then
  for b in ${brew[@]}; do
    brew install $b
  done
  for c in ${cask[@]}; do
    brew install --cask $c
  done

fi

# ghq
if type "ghq"; then
  echo "$(tput setaf 2)Already installed ghq ✔︎$(tput sgr0)"
else
  echo "Installing ghq..."
    brew install ghq
fi
if type "ghq"; then
  ghq get https://github.com/b4b4r07/enhancd
fi

# pip3
if type "pip3"; then
  echo "$(tput setaf 2)Already installed pip3 ✔︎$(tput sgr0)"
else
  echo "Installing pip3..."
  brew install python3
fi
if type "pip3"; then
  pip3 install neovim
  pip3 install virtualenv
fi

# curl
mkdir -p ~/.config/nvim/
cd ~/.config/nvim/
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh ./installer.sh ~/.config/nvim/
cd ~

# dotfiles

OS X / Ubuntu dotfiles.


### Installation

```
$ git clone https://github.com/nakabonne/dotfiles.git
```

## macOS

### deploy

```
$ sh ./link.sh
```

## Initialize

```
$ source .bash_profile
$ sh ./install.sh
```

## Ubuntu

### deploy

```
$ sh ./ubuntu/link.sh
```

## Initialize

TOOD:

- [ ] Add `ubuntu/install.sh` that has instructions to install:
  - pip3 (via apt)
  - pyenv
    - https://github.com/pyenv/pyenv/wiki#suggested-build-environment
    - https://github.com/pyenv/pyenv-installer#installation--update--uninstallation
  - virtualenv
  - anyenv
  - python3 (via pip3)
  - neovim: https://github.com/neovim/neovim/wiki/Installing-Neovim#ubuntu (PPA is recommended)
  - dein.vim
    - https://github.com/Shougo/dein.vim#quick-start
  - ghq (via `go install`)
  - lazygit
  - go (via snap)
  - fzf (via apt-get)
  - enhancd
    - https://github.com/b4b4r07/enhancd#bash
  - starship
    - https://starship.rs/#quick-install
  - tmux
- [ ] Move domain-specific settings in `.bash_profile` and `.bashrc` to `.bash_local` for each device.
- [ ] Make `.bashrc` a part of existing `.bashrc`?

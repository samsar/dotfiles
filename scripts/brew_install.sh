#!/bin/bash

# /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# useful packages
brew install \
  ag \
  asdf \
  bash \
  bat \
  cloc \
  diff-so-fancy \
  dive \
  dsh \
  fx \
  gh \
  golang \
  htop \
  hyperfine \
  icdiff \
  jq \
  libyaml \
  shellcheck \
  tenv \
  watch \
  wget

# To install useful key bindings and fuzzy completion (fzf):
# brew install fzf
# $(brew --prefix)/opt/fzf/install

# configure diff-so-fancy
git config --global core.pager "diff-so-fancy | less --tabs=4 -RF"
git config --global interactive.diffFilter "diff-so-fancy --patch"

# configure asdf
asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
asdf plugin add ruby https://github.com/asdf-vm/asdf-ruby.git

# install node, ruby
asdf install nodejs latest
asdf install ruby latest

asdf set nodejs latest
asdf set ruby latest

asdf reshim

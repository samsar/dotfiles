#!/bin/bash

# /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# eksctl
brew tap weaveworks/tap
brew install weaveworks/tap/eksctl

# useful packages
brew install \
  ag \
  bash \
  bat \
  cloc \
  diff-so-fancy \
  dive \
  dsh \
  exa \
  fx \
  gh \
  htop \
  hyperfine \
  icdiff \
  jq \
  shellcheck \
  watch \
  wget

# To install useful key bindings and fuzzy completion (fzf):
# brew install fzf
# $(brew --prefix)/opt/fzf/install

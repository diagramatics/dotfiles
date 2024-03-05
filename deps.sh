#!/usr/bin/env bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Swap to zsh
brew install zsh
sudo sh -c "echo $(command -v zsh) >> /etc/shells"
sudo chsh -s "$(command -v zsh)"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

brew install git
# brew install fzf
# $(brew --prefix)/opt/fzf/install --all
brew install hub
brew install gh
brew install vim
brew install pyenv
brew install git-delta
brew install --cask warp

curl -fsSL https://fnm.vercel.app/install | bash
fnm install --lts

corepack enable
corepack prepare yarn@stable --activate

# Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
